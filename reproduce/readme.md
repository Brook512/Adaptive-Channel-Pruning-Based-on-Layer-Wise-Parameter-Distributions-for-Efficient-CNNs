# Performance Benchmarks
#### - ACP Pruner (This Work)
```bash
# 2.11x without sparse learning (Ours w/o SL)
python main.py --mode prune --model resnet56 --batch-size 128 --restore </path/to/pretrained/model> --dataset cifar10  --method ACP --speed-up 2.2 --global-pruning --seed 24 --sl-restore 1
python main.py --mode prune --model vgg19 --batch-size 128 --restore </path/to/pretrained/model> --dataset cifar100  --method ACP --speed-up 8.8 --global-pruning --seed 24 --sl-restore 1
