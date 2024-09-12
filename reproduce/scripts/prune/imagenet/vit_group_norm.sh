OMP_NUM_THREADS=4 python -m torch.distributed.launch --nproc_per_node=8 --master_port 18101 --use_env main_imagenet.py --model vit_b_16 --epochs 300 --batch-size 512 --opt adamw --lr 0.003 --wd 0.3 --lr-scheduler cosineannealinglr --lr-warmup-method linear --lr-warmup-epochs 30 --lr-warmup-decay 0.033 --amp --label-smoothing 0.11 --mixup-alpha 0.2 --auto-augment ra  --clip-grad-norm 1 --ra-sampler --cutmix-alpha 1.0 --model-ema --prune --cache-dataset --method group_norm --global_pruning --soft_keeping_ratio 0.5 --pretrained --target_flops 10 --output-dir run/imagenet/vit_norm --amp &> run/imagenet/vit_group_norm.log