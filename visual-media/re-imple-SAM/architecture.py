import numpy as np
import torch
import torch.nn as nn
import torch.nn.functional as F
import timm
from typing import Optional, Tuple, List, Dict, Any

from .image_encoder import ImageEncoderViT
from .mask_decoder import MaskDecoder
from .prompt_encoder import PromptEncoder
class SAM(nn.Module):
    mask_threshold: float = 0.0
    image_format: str = 'RGB'
    def __init__(
        self,
        image_encoder:ImageEncoderViT,
        prompt_encoder: PromptEncoder,
        mask_decoder: MaskDecoder,
        pixel_mean: List[float] = [123.675, 116.28, 103.53],
        pixel_std: List[float] = [58.395, 57.12, 57.375],
    ):
        super().__init__()
        self.image_encoder = image_encoder
        self.prompt_encoder = prompt_encoder
        self.mask_decoder = mask_decoder
        # self.mask_threshold = mask_threshold
        self.register_buffer('pixel_mean', torch.tensor(pixel_mean).view(-1, 1, 1), False)
        self.register_buffer('pixel_std', torch.tensor(pixel_std).view(-1, 1, 1), False)
    @property
    def device(self):
        return self.pixel_mean.device
    @torch.no_grad()
    def forward(self,
                batched_input: List[Dict[str, Any]],
                multimask_output: bool = False,
    ):
        #画像の前処理：batched_inputのそれぞれに対しpre_processを適用
        input_image = torch.stack([self.pre_process(x["image"]) for x in batched_input], dim=0)
        image_embeddings = self.image_encoder(input_image)

        outputs = []
        for image_record, curr_embedding in zip(batched_input, image_embeddings):
            points = (image_record["point_coords"], image_record["point_labels"]) if "point_coords" in image_record else None
            sparse_embeddings, dense_embeddings = self.prompt_encoder(
                points=points,
                boxes= image_record.get("boxes", None),
                masks = image_record.get("masks", None)
            )
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
            masks = masks > self.mask_threshold
            outputs.append({
                "masks":masks,
                "iou_predictions": iou_predictions,
                "low_res_masks": low_res_masks,
            })
        return outputs
    
    def postprocess(
        self,
        masks: torch.Tensor,
        input_size: Tuple[int, ...], #(256,256)など
        output_size: Tuple[int, ...]
    ) -> torch.Tensor:
        #元の画像サイズに
        masks = F.interpolate(masks, (self.image_encoder.img_size, self.image_encoder.img_size), mode="bilinear", align_corners=False)
        masks = masks[..., :input_size[0], :input_size[1]]
        masks = F.interpolate(masks, output_size, model="bilinear", align_corners=False)
        return masks
    def pre_process(self, x:torch.Tensor) -> torch.Tensor:
        x = (x - self.pixel_mean) / self.pixel_std
        h,w = x.shape[-2:] #[1:]
        padh = self.image_encoder.img_size - h
        padw = self.image_encoder.img_size - w
        x = F.pad(x, (0, padw, 0, padh)) #pad
        return x
class ImageEncoder(nn.Module):
    """MAEで事前学習されたVision Transformer (ViT-H/16) を使用
    1024×1024の入力解像度で画像をリサイズおよびパディング
    ViT-H/16の出力を16倍ダウンサンプリングして64×64の画像埋め込みを生成
    1×1の畳み込み層でチャネルを256に減少させる
    3×3の畳み込み層で256チャネルの埋め込みを生成
    各畳み込み層の後にレイヤーノーマライゼーションを適用"""
    def __init__(self, img_size: int = 1024, embedding_dim: int =256):
        super(ImageEncoder, self).__init__()
        self.vit = timm.create_model('vit_large_patch16_224', pretrained=True)
        self.vit.patch_size = 16
        self.img_size = img_size

        self.conv1 = nn.Conv2d(in_channel=img_size, out_channel=embedding_dim, kernel_size=1)
        self.conv2 = nn.Conv2d(in_channel=embedding_dim, out_channel=embedding_dim, kernel_size=3)
        # [256,64,64]に対し正規化
        self.ln1 = nn.LayerNorm([embedding_dim, img_size//16, img_size//16])
        self.ln2 = nn.LayerNorm([embedding_dim, img_size//16, img_size//16])

    def forward(self, x):
        # 画像を1024×1024にリサイズし、パディング
        x = F.interpolate(x, size=(self.img_size, self.img_size), mode='bilinear', align_corners=False)
        # vitで画像埋め込み
        x = self.vit.patch_embed(x) #パッチに分割し、埋め込み
        x = self.vit.pos_drop(x) #位置エンコーディング、ドロップアウト
        for block in self.vit.blocks:
            x = block(x) #transformer block順に適用
        # (1024,1024) -> (1,64,64,)
        x = x.view()

