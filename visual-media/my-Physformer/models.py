import torch
import torch.nn as nn
import torch.nn.functional as F
import math

from typing import Optional

class TDC(nn.Module):
    def __init__(self, in_channels, out_channels, kernel_size=3, stride=1,
                 padding=1, dilation=1, groups=1, bias=False, theta=0.6):

        super(TDC, self).__init__()
        self.conv = nn.Conv3d(in_channels, out_channels, kernel_size=kernel_size, stride=stride, padding=padding,
                              dilation=dilation, groups=groups, bias=bias)
        self.theta = theta
    def forward(self, x):
        out_normal = self.conv(x)
        if self.theta <= 1e-6:
            return out_normal
        else: 
            # 最初、最後の時刻での高さ・幅合計した差を計算
            kernel_diff = self.conv.weight[:, :, 0, :, :].sum(2).sum(2) - self.conv.weight[:, :, -1, :, :].sum(2).sum(2)
            out_diff = F.conv3d(x, kernel_diff[:, None, :, :, :])
            return out_normal - self.theta * out_diff

# Temporal Difference Multi-head Self-Attention
class TDC_QKV(nn.Module):
    def __init__(self, dim, num_heads, dropout, theta):
        super().__init__()
        
        self.proj_q = nn.Sequential(
            TDC(dim, dim, kernel_size=3, bias=False, theta=theta),
            nn.BatchNorm3d(dim),
        )
        self.proj_k = nn.Sequential(
            TDC(dim, dim, kernel_size=3, bias=False, theta=theta),
            nn.BatchNorm3d(dim),
        )
        self.proj_v = nn.Sequential(
            nn.Conv3d(dim, dim, kernel_size=3, padding=1, bias=False),
        )
        self.attention = nn.MultiheadAttention(dim, num_heads, dropout=dropout)
    def forward(self, x):
        q = self.proj_q(x)
        k = self.proj_k(x)
        v = self.proj_v(x)
        return self.attention(q, k, v)

# Spatio-temporal Feed-forward
class PositionWise_FeedForward_ST(nn.Module):
    def __init__(self, dim, ff_dim):
        super().__init__()
        self.fc1 = nn.Sequential(
            nn.Conv3d(dim, ff_dim, stride=1, padding=0, bias=False),
            nn.BatchNorm3d(ff_dim),
            nn.ELU(), # ReLU?
        )
        self.STConv = nn.Sequential(
            # Depth-wise 3d convolution
            nn.Conv3d(ff_dim, ff_dim, stride=1, padding=1, groups=ff_dim, bias=False),
            nn.BatchNorm3d(ff_dim),
            nn.ELU(), # ReLU?
        )
        self.fc2 = nn.Sequential(
            nn.Conv3d(ff_dim, dim, stride=1, padding=0, bias=False),
            nn.BatchNorm3d(dim),
        )
    def forward(self, x):
        [B, P, C] = x.shape
        x = x.transpose(1, 2).view(B, C, P//16, 4, 4)      # [B, dim, 40, 4, 4]
        x = self.fc1(x)
        x = self.STConv(x)
        x = self.fc2(x)
        x = x.flatten(2).transpose(1, 2)

        return x


class Block_Transformer(nn.Module):
    """Transformer Block"""
    def __init__(self, dim, num_heads, ff_dim, dropout, theta):
        super().__init__()
        self.attn = TDC_QKV(dim, num_heads, dropout, theta)
        self.proj = nn.linear(dim, dim)
        self.norm1 = nn.LayerNorm(dim, eps=1e-6)
        self.pwff = self.PositionWise_FeedForward_ST(dim, ff_dim)
        self.norm2 = nn.LayerNorm(dim, eps=1e-6)
        self.drop = nn.Dropout(dropout)
    def forward(self, x):
        # 正規化してattention
        attn = self.attn(self.norm1(x))
        # 線形変換してdropout
        h = self.drop(self.proj(attn))
        x = x + h
        h = self.drop(self.pwff(self.norm2(x)))
        x = x + h
        # x, attention結果、FeedForward結果を加えた
        return x

# 上のblockを何層か繰り返す
class TransformerBlocks(nn.Module):
    def __init__(self, num_layers, dim, num_heads, ff_dim, dropout, theta):
        super().__init__()
        self.blocks = nn.ModuleList([
            Block_Transformer(dim=dim, num_heads=num_heads, ff_dim=ff_dim, dropout=dropout, theta=theta)
        ])
    def forward(self, x):
        for block in self.blocks:
            x = block(x)
        return x
    
# 全体のモデルarchitecture
class Physformer(nn.Module):

    def __init__(
        self, 
        name: Optional[str] = None, 
        pretrained: bool = False, 
        patches: int = 16,
        dim: int = 768,
        ff_dim: int = 3072,
        num_heads: int = 12,
        num_layers: int = 12,
        attention_dropout_rate: float = 0.0,
        dropout_rate: float = 0.2,
        representation_size: Optional[int] = None,
        load_repr_layer: bool = False,
        classifier: str = 'token',
        #positional_embedding: str = '1d',
        in_channels: int = 3, 
        frame: int = 160,
        theta: float = 0.2,
        image_size: Optional[int] = None,
    ):
        super().__init__()

        
        self.image_size = image_size  
        self.frame = frame  
        self.dim = dim  

        # for tube-tokenizer: calculate each token length
        t,h,w = as_tuple(image_size)         
        ft, fh, fw = as_tuple(patches)
        gt, gh, gw = t//ft, h//fh, w//fw
        
        self.patch_embedding = nn.Conv3d(dim, dim, kernel_size=(ft, fh, fw), stride=(gt, gh, gw))
        
        self.transformer1 = TransformerBlocks(num_layers//3, dim, num_heads, ff_dim, attention_dropout_rate, theta)
        self.transformer2 = TransformerBlocks(num_layers//3, dim, num_heads, ff_dim, attention_dropout_rate, theta) 
        self.transformer3 = TransformerBlocks(num_layers//3, dim, num_heads, ff_dim, attention_dropout_rate, theta)

        self.Stem0 = nn.Sequential(
            # [1,5,5]: kernel-size
            nn.Conv3d(3, dim//4, [1, 5, 5], stride=1, padding=[0,2,2]),
            nn.BatchNorm3d(dim//4),
            nn.ReLU(inplace=True),
            nn.MaxPool3d((1, 2, 2), stride=(1, 2, 2)),
        )
        
        self.Stem1 = nn.Sequential(
            nn.Conv3d(dim//4, dim//2, [3, 3, 3], stride=1, padding=1),
            nn.BatchNorm3d(dim//2),
            nn.ReLU(inplace=True),
            nn.MaxPool3d((1, 2, 2), stride=(1, 2, 2)),
        )
        self.Stem2 = nn.Sequential(
            nn.Conv3d(dim//2, dim, [3, 3, 3], stride=1, padding=1),
            nn.BatchNorm3d(dim),
            nn.ReLU(inplace=True),
            nn.MaxPool3d((1, 2, 2), stride=(1, 2, 2)),
        )
        self.upsample = nn.Sequential(
            nn.Upsample(scale_factor=(2,1,1)),
            nn.Conv3d(dim, dim, [3, 1, 1], stride=1, padding=(1,0,0)),   
            nn.BatchNorm3d(dim),
            nn.ELU(),
        )
        self.upsample2 = nn.Sequential(
            nn.Upsample(scale_factor=(2,1,1)),
            nn.Conv3d(dim, dim//2, )
        )
        self.ConvBlockLast = nn.Conv1d(dim//2, 1, 1,stride=1, padding=0)

    def forward(self, x):
        b,c,t,fh,fw = x.shape
        x = self.Stem0(x)
        x = self.Stem1(x)
        x = self.Stem2(x)

        x = self.patch_embedding(x)

        feature1 = self.transformer1(x)
        feature2 = self.transformer2(x)
        feature3 = self.transformer3(x)

        features = feature3.transpose(1,2).view(b,self.dim, t//4, 4, 4)
        features = self.upsample(features)
        features = self.upsample2(features)

        features = torch.mean(features, dim=3)
        features = torch.mean(features, dim=3)
        rPPG = self.ConvBlockLast(features) 
        rPPG = rPPG.squeeze(1)

        return rPPG

