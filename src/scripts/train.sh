export DEBUG_MODE="true"

export NCCL_P2P_LEVEL=NVL
export DATA_PATH=/mnt/data/share/data1/ui-r1/train.json
export CKPT_PATH=/mnt/data/share/Qwen2.5-VL-3B-Instruct
export SAVE_PATH=/mnt/data/home/zoulexiao/workspace/UI-R1/ckpt/ablate-think
export LOG_PATH=${SAVE_PATH}"/debug_log.txt"
export WANDB_BASE_URL=https://api.wandb.ai
export WANDB_PROJECT=ui-r1
# export WANDB_API_KEY="caa31fb6fb3373a34ec0ef957ee31c7dfebf8e10"
# wandb login $WANDB_API_KEY

CUDA_VISIBLE_DEVICES=0,1,4,5 torchrun --nproc_per_node=4 \
    --nnodes="1" \
    --node_rank="0" \
    --master_addr="127.0.0.1" \
    --master_port="12346" \
    ../ui_r1/src/open_r1/grpo_json_action_coord.py \
    --output_dir ${SAVE_PATH}  \
    --model_name_or_path ${CKPT_PATH} \
    --data_file_paths /mnt/data/share/data1/ui-r1/train.json \
    --image_folders /mnt/data/share/data1/ui-r1/train_imgs \
    --dataset_name ${DATA_PATH} \
    --deepspeed ../ui_r1/local_scripts/zero3.json \
    --max_prompt_length 1024 \
    --per_device_train_batch_size 2 \
    --gradient_accumulation_steps 2 \
    --logging_steps 1 \
    --bf16 \
    --report_to tensorboard \
    --gradient_checkpointing true \
    --attn_implementation flash_attention_2 \
    --max_pixels 12845056 \
    --num_train_epochs 8 \
    --run_name ablatethink \
    --save_strategy epoch \
    --save_only_model true \
    --num_generations 8
