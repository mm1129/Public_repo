import torch
from torch import nn
from torch.nn import functional as F
from typing import List, Tuple, Type

from .common import LayerNorm2d

class MaskDecoder(nn.Module):
    """
    low_res_masks, iou_predictions = self.mask_decoder(
        image_embeddings = curr_embedding.unsqueeze(0),
        # position encoding：位置情報を取得
        image_pe = self.prompt_encoder.get_dense_pe(),
        sparse_embeddings = sparse_embeddings,
        dense_embeddings = dense_embeddings,
        multimask_output = multimask_output
    )
    masks = self.mask_decoder(
        low_res_masks,
        input_size=image_record["image"].shape[0],
        original_size=image_record["original_size"]
    )
    """
    def __init__(
            self,
            *,
            transformer_dim: int,
            transformer: nn.Module,
            num_multimask_output: int=3,
            activation: Type[nn.Module] = nn.GELU,
            iou_head_depth: int=3,
            iou_head_hidden_dim: int=256,

    ) -> None:
        super().__init__()
        self.transformer_dim = transformer_dim
        self.transformer = transformer

        self.num_multimask_output = num_multimask_output
        # Iouトークンのembedding
        self.iou_token = nn.embedding(1, transformer_dim)
        self.num_mask_tokens = num_multimask_output+1
        self.mask_token = nn.embedding(self.num_mask_tokens, transformer_dim)
        
        self.output_upscaling = nn.Sequential(
            nn.ConvTransformer2d(transformer_dim, transformer_dim//4, kernel_size=2, stride=2),
            LayerNorm2d(transformer_dim//4),
            activation(),
            nn.ConvTransformer2d(transformer_dim//4, transformer_dim//8, kernel_size=2, stride=2),
            activation()
        )
        self.output_hypernetworks_mlps = nn.ModuleList(
            [
                MLP(transformer_dim, transformer_dim, transformer_dim//8, 3)
                for i in range(self.num_mask_tokens)
            ]
        )
        self.iou_prediction_head = MLP(
            transformer_dim, iou_head_hidden_dim, self.num_mask_tokens, iou_head_depth
        )
    def forward(
        self,
        image_embeddings: torch.Tensor,
        image_pe: torch.Tensor,
        sparse_prompt_embeddings: torch.Tensor,
        dense_prompt_embeddings: torch.Tensor,
        multimask_output: bool,
    ) -> Tuple[torch.Tensor, torch.Tensor]:
        masks, iou_pred = self.predict_masks(
            image_embeddings=image_embeddings,
            image_pe=image_pe,
            sparse_prompt_embeddings=sparse_prompt_embeddings,
            dense_prompt_embeddings=dense_prompt_embeddings,
        )
        if multimask_output:
            mask_slice = slice(1, None)
        else:
            mask_slice = slice(0,1)
        masks = masks[:, mask_slice,:,:]
        iou_pred = iou_pred[:, mask_slice]
        return masks, iou_pred

    def predict_masks(
        self,
        image_embeddings: torch.Tensor,
        image_pe: torch.Tensor,
        sparse_prompt_embeddings: torch.Tensor,
        dense_prompt_embeddings: torch.Tensor,
    ) -> Tuple[torch.Tensor, torch.Tensor]:
        output_tokens = torch.cat([self.iou_token.weight, self.mask_token.weight], dim=0)
        output_tokens = output_tokens.unsqueeze(0).expand(sparse_prompt_embeddings.shape[0], -1, -1)
        tokens = torch.cat((output_tokens, sparse_prompt_embeddings), dim=1)

        src = torch.repeat_interleave(image_embeddings, tokens.shape[0], dim=0)
        src = src + dense_prompt_embeddings
        pos_src = torch.repeat_interleave