My Re-implemnted SAM by reading the paper
Segment Anything [ICCV, 2023]

![Alt text](image.png)
![Alt text](image-1.png)

For re-implementation, I reffered not only the content but also appendix.
The implementation part was mainly the overall arghitecture shown in figure 4, and the detailed model 

This work was done for the assignment below.
![Alt text](image-2.png)
[why this paper is important]
The paper “Segment Anything” presents a significant advancement in the field of computer vision, particularly in the area of image segmentation. This research is important for several reasons. Firstly, it introduces the Segment Anything Model (SAM), a foundational model for image segmentation capable of generalizing to a wide range of tasks and data distributions beyond those seen during training. The SAM achieves this through the innovative concept of “promptable segmentation,” where the model can generate a valid segmentation mask given any form of prompt, such as points, boxes, masks, or even free-form text.


[what I heve implemented]

1. Image Encoder (ImageEncoderViT)
2.	Mask Decoder (MaskDecoder)
3. Overall architecture

**Image Encoder**

The ImageEncoder uses a Vision Transformer (ViT-H/16) pre-trained with Masked Autoencoders (MAE). It processes images with a resolution of 1024x1024 pixels, downsamples them by a factor of 16, and generates a 64x64 feature map. Additional convolutional and normalization layers refine the embeddings.

**Mask Decoder**

The MaskDecoder generates the final segmentation masks from the embeddings provided by the image and prompt encoders. It uses convolutional layers and upsampling techniques to produce high-resolution masks.

**SAM Model Integration**

The SAM model integrates these components to process input images and generate segmentation masks. The model includes pre-processing and post-processing steps to handle image normalization, resizing, and thresholding for final mask generation.
