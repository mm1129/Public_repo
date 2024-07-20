import torch
import torch.nn as nn
import torch.nn.functional as F
from typing import Tuple, Optional
class Block(nn.Module):
    def __init__(self,embed_dim, num_heads=12, mlp_ratio=4.0):
        super(Block, self).__init__()
        self.norm1 = nn.LaryerNorm(embed_dim)
        self.norm2 = nn.LaryerNorm(embed_dim)
        self.attn = nn.MultiheadAttention(embed_dim, num_heads)
        self.mlp = nn.Sequential(
            nn.Linear(embed_dim, embed_dim * mlp_ratio),
            nn.GELU(),
            nn.Linear(embed_dim * mlp_ratio, embed_dim),
        )
    def forward(self, x):
        # q,k,vにxを入力 -> output, output_weights
        x = x + self.attn(self.norm1(x), self.norm1(x), self.norm1(x))[0]
        x = x + self.mlp(self.norm2(x))
        return x
class LayerNorm2d(nn.Module):
    def __init__(self, num_features):
        super(LayerNorm2d, self).__init__()
        self.weight = nn.Parameter(torch.ones(num_features))
        self.bias = nn.Parameter(torch.zeros(num_features))
        self.eps = 1e-5

    def forward(self, x):
        u = x.mean(1, keepdim=True)
        s = (x - u).pow(2).mean(1, keepdim=True)
        x = (x - u) / torch.sqrt(s + self.eps)
        return self.weight[:, None, None] * x + self.bias[:, None, None]

class ImageEncoderViT(nn.Module):
    def __init__(self, image_size=1024, patch_size=16, embedding_dim=768, depth=12, num_threads=12, mlp_ratio=4.0, out_channel=256):
        super().__init__()
        self.img_size = image_size
        self.patch_embed = nn.Conv2d(3, embedding_dim, kernel_size=patch_size, stride=patch_size)
        self.pos_embed = nn.Parameter(torch.zeros(1, (image_size // patch_size) ** 2, embedding_dim))
        self.blocks = nn.ModuleList([
            Block(embedding_dim, num_heads=num_threads, mlp_ratio=mlp_ratio) for _ in range(depth)
        ])
        self.neck = nn.Sequential(
            nn.Conv2d(embedding_dim, out_channel, kernel_size=1),
            LayerNorm2d(out_channel),
            nn.Conv2d(out_channel, out_channel, kernel_size=3, padding=1),
            LayerNorm2d(out_channel)
        )
    def forward(self, x:torch.Tensor) -> torch.Tensor:
        # (batch_size, num_patches, embed_dim)に変換
        x = self.patch_embed(x).flatten(2).transpose(1, 2)
        x = x + self.pos_embed #位置エンコーディング追加
        for blk in self.blocks:
            x = blk(x) #out: embedding_dim
        # (batch_size, embed_dim, sqrt(num_patches), sqrt(num_patches))
        x = x.permute(0,2,1).view(x.size(0), -1, self.x.size(1)**0.5, self.x.size(1)**0.5)
        x = self.neck(x)
        return x
