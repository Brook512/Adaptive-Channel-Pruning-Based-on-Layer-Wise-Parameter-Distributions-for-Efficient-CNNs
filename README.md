# Adaptive-Channel-Pruning-Based-on-Layer-Wise-Parameter-Distributions-for-Efficient-CNNs
Code for paper Adaptive Channel Pruning Based on Layer-Wise Parameter Distributions for Efficient CNNs

# Framework of our paper
![the framework of our method. Our method begins by evaluating the importance of each channel in the model and applying regularization proportional
to its importance, thereby inducing different sparsity across the channels. Subsequently, we determine a threshold based on the overall parameter ranking in
the current layer. Using this threshold, we observe that in some channels, a significant portion of parameters is concentrated below the threshold, leading to
the pruning of these sparse channels while retaining those that are functionally significant for futher fine-tuning.](./experiments/framework.png)


# Performance Benchmarks

## 1. ResNet-56 / CIFAR-10 / 2.00x - 2.55x

| Dataset   | Architecture | Method         | Baseline | Pruned Acc | △Acc   | △FLOPs   |
|-----------|--------------|----------------|----------|------------|--------|----------|
| CIFAR-10  | ResNet-18     | OTOv2 [14]     | 93.02%   | 92.86%     | -0.16% | 79.7%    |
|           |              | ATO [13]       | 94.41%   | 94.51%     | 0.1%   | 79.9%    |
|           |              | ours           | 94.04%   | 94.27%     | 0.23%  | 80.6%    |
|           | ResNet-56     | FPGM [15]      | 93.59%   | 93.49%     | -0.1%  | 52.6%    |
|           |              | DepGraph [8]   | 93.53%   | 93.77%     | 0.23%  | 51.3%    |
|           |              | White-Box [11] | 93.26%   | 93.55%     | 0.29%  | 55.0%    |
|           |              | G-Sharp [16]   | 94.11%   | 94.16%     | 0.05%  | 53.9%    |
|           |              | ATO [13]       | 93.53%   | 93.45%     | -0.08% | 55.0%    |
|           |              | ours           | 94.04%   | 94.36%     | 0.32%  | 55.0%    |
| CIFAR-100 | VGG-19        | EigenD [17]    | 73.3%    | 65.18%     | -8.12% | 69.6%    |
|           |              | GReg [18]      | 74.02%   | 73.60%     | -0.42% | 70.4%    |
|           |              | DepGraph [8]   | 73.50%   | 70.59%     | -2.91% | 89.0%    |
|           |              | ours           | 74.05%   | 71.50%     | -2.55% | 88.7%    |
|           | ResNet-18     | OTOv2 [14]     | -        | 74.96%     | -      | 78.0%    |
|           |              | ATO [13]       | 77.95%   | 76.79%     | -1.16% | 40.1%    |
|           |              | ours           | 77.62%   | 76.91%     | -0.71% | 44.7%    |
|           | ResNet-34     | OTOv2 [14]     | -        | 78.12%     | -      | 49.5%    |
|           |              | ATO [13]       | 78.43%   | 78.43%     | 0.0%   | 49.5%    |
|           |              | ours           | 78.13%   | 78.44%     | 0.31%  | 50.3%    |

## Experimental results
![Comparison of Top-1 accuracy between existing methods and our
approach under varying FLOPs pruning rates. Experiments were performed
using ResNet-56 architectures on the CIFAR-10 dataset.](./experiments/Acc_FLOPs.png)

## Acknowledgements

This project makes use of the code from [Torch-Pruning](https://github.com/VainF/Torch-Pruning), developed by Gongfan Fang et al. The original code is licensed under the MIT License.