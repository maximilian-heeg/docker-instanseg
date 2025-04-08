from instanseg import InstanSeg
print("Loaded InstanSeg")
import torch
print('CUDA is available') if torch.cuda.is_available() else print('CUDA is not available')
