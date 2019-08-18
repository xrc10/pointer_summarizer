export PYTHONPATH=`pwd`
# MODEL=$1

export CUDA_VISIBLE_DEVICES=$(python ../../tools/test_cuda/test_cuda.py 6000 2>&1)
echo "Training on GPU $CUDA_VISIBLE_DEVICES ..."

MODEL=log/train_pointer_no_coverage/model/model_500000_1565763459;
python training_ptr_gen/decode.py $MODEL >& log/decode_log;

