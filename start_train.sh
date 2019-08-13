export PYTHONPATH=`pwd`

export CUDA_VISIBLE_DEVICES=$(python ../../tools/test_cuda/test_cuda.py 6000 2>&1)
echo "Training on GPU $CUDA_VISIBLE_DEVICES ..."

mkdir -p log;
python training_ptr_gen/train.py | tee log/training_log;

