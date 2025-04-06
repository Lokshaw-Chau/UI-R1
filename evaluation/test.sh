# MODEL_PATH="../ckpt/Qwen2.5-VL-3B-UI-R1"
# IMG_PATH="../data/AndroidControl/screenshots"
# TEST_JSON="../data/AndroidControl/train.json"
# TEST_NAME="debug"



# CUDA_VISIBLE_DEVICES=0,1,2,3 python test_androidcontrol.py\
#     --model_path ${MODEL_PATH} \
#     --image_path ${IMG_PATH} \
#     --test_json ${TEST_JSON} \
#     --test_name ${TEST_NAME}

export NCCL_P2P_LEVEL=NVL
MODEL_PATH="/mnt/data/home/zoulexiao/workspace/UI-R1/ckpt/ablate-think"
IMG_PATH="/mnt/data/share/data1/screenspotv2/screenspotv2_image"
TEST_JSON="/mnt/data/share/data1/screenspotv2/screenspot_desktop_v2.json"
TEST_NAME="desktop-ablate-think"
CUDA_VISIBLE_DEVICES=0,1,2,3 python test_screenspot.py\
    --model_path ${MODEL_PATH} \
    --image_path ${IMG_PATH} \
    --test_json ${TEST_JSON} \
    --test_name ${TEST_NAME}

export NCCL_P2P_LEVEL=NVL
MODEL_PATH="/mnt/data/home/zoulexiao/workspace/UI-R1/ckpt/ablate-think"
IMG_PATH="/mnt/data/share/data1/screenspotv2/screenspotv2_image"
TEST_JSON="/mnt/data/share/data1/screenspotv2/screenspot_mobile_v2.json"
TEST_NAME="mobile-ablate-think"
CUDA_VISIBLE_DEVICES=0,1,2,3 python test_screenspot.py\
    --model_path ${MODEL_PATH} \
    --image_path ${IMG_PATH} \
    --test_json ${TEST_JSON} \
    --test_name ${TEST_NAME}

export NCCL_P2P_LEVEL=NVL
MODEL_PATH="/mnt/data/home/zoulexiao/workspace/UI-R1/ckpt/ablate-think"
IMG_PATH="/mnt/data/share/data1/screenspotv2/screenspotv2_image"
TEST_JSON="/mnt/data/share/data1/screenspotv2/screenspot_web_v2.json"
TEST_NAME="web-ablate-think"
CUDA_VISIBLE_DEVICES=0,1,2,3 python test_screenspot.py\
    --model_path ${MODEL_PATH} \
    --image_path ${IMG_PATH} \
    --test_json ${TEST_JSON} \
    --test_name ${TEST_NAME}