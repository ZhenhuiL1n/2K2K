# export CUDA_VISIBLE_DEVICES=0,1 \
python -m torch.distributed.run \
    --nnodes=1 \
    --nproc_per_node=4 \
    --rdzv_backend=c10d \
    train.py --use_ddp=True --phase 1 --batch_size 6
