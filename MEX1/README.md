# AI 231 — MNIST Einops/Einsum CNN

This repository contains a three-layer convolutional neural network for MNIST classification. The convolution, pooling, flattening, linear, and loss computations are implemented with tensor operations using `einops` and `torch.einsum` instead of PyTorch's built-in convolutional and linear layers.

## Result

- Training: 5 epochs
- Test accuracy: **98.64%**
- Execution device: one NVIDIA A100 GPU
- Parameters: 21,578

## CNN architecture

| Stage | Output shape |
|---|---:|
| Input | 1 × 28 × 28 |
| Conv1 (3×3, 1→8) + ReLU | 8 × 28 × 28 |
| MaxPool 2×2 | 8 × 14 × 14 |
| Conv2 (3×3, 8→16) + ReLU | 16 × 14 × 14 |
| MaxPool 2×2 | 16 × 7 × 7 |
| Conv3 (3×3, 16→32) + ReLU | 32 × 7 × 7 |
| Flatten | 1,568 |
| Einsum linear classifier | 10 classes |

The executed notebook includes the training output, test accuracy, and a 4×4 grid of 16 test images with their ground-truth and predicted labels.

## Sample predictions

![MNIST ground truth and predictions](mnist_predictions.png)

## File

- `mnist_einops_cnn.ipynb` — complete implementation and saved results

## Run

```bash
python -m pip install -r requirements.txt
jupyter notebook mnist_einops_cnn.ipynb
```

The notebook automatically uses CUDA when available and otherwise runs on CPU.
