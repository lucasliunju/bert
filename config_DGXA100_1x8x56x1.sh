## DL params
export BATCHSIZE=32
export GRADIENT_STEPS=1
export LR=3.5e-4
export MAX_SAMPLES_TERMINATION=4500000
export MAX_STEPS=12425
export OPT_LAMB_BETA_1=0.9
export OPT_LAMB_BETA_2=0.999
export START_WARMUP_STEP=0
export WARMUP_PROPORTION=0.0

export CONT=mlperf-nvidia:language_model
export LOGDIR="/nvme_data/guest_01/mlperf_bert/log"
export CUDA_VISIBLE_DEVICES="0,1,2,3,4,5,6,7"

export EXTRA_PARAMS="--dense_seq_output --unpad --unpad_fmha --exchange_padding --fused_bias_fc --fused_bias_mha --fused_dropout_add "
export PHASE=2
export EVAL_ITER_START_SAMPLES=150000
export EVAL_ITER_SAMPLES=150000

## System run parms
export DGXNNODES=1
export DGXSYSTEM=$(basename $(readlink -f ${BASH_SOURCE[0]}) | sed 's/^config_//' | sed 's/\.sh$//' )
export WALLTIME=01:15:00

## System config params



export DGXNGPU=8
export DGXSOCKETCORES=32
export DGXNSOCKET=2
export DGXHT=2         # HT is on is 2, HT off is 1
export SLURM_NTASKS=${DGXNGPU}

## Data Paths
export DATADIR="/nvme_data/guest_01/mlperf_bert/hdf5/training-4320/hdf5_4320_shards_varlength"
export EVALDIR="/nvme_data/guest_01/mlperf_bert/hdf5/eval_4320_shard"
export DATADIR_PHASE2="/nvme_data/guest_01/mlperf_bert/hdf5/training-4320/hdf5_4320_shards_varlength"
export CHECKPOINTDIR="/nvme_data/guest_01/mlperf_bert/checkpoints"
#using existing checkpoint_phase1 dir
export CHECKPOINTDIR_PHASE1="/nvme_data/guest_01/mlperf_bert/phase1"
export UNITTESTDIR="/nvme_data/guest_01/mlperf_bert/unit_test"