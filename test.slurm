#!/bin/bash
#SBATCH -A  cvn@v100
#SBATCH --job-name=hmsc_test.0_test     # job name
#SBATCH --ntasks=1                   # number of MP tasks
#SBATCH --ntasks-per-node=1          # number of MPI tasks per node
#SBATCH --gres=gpu:1                 # number of GPUs per node
#SBATCH --cpus-per-task=4           # number of cores per tasks
#SBATCH --time=0:05:00 # maximum execution time (HH:MM:SS)
#SBATCH --output=hmsc_out.out # output file name
#SBATCH --error=hmsc_error.out  # error file name
#SBATCH --qos=qos_gpu-dev         # we are submitting a test job


module purge
module load tensorflow-gpu/py3/2.11.0
srun python -m hmsc.run_gibbs_sampler --input "init_30_08.rds" --output "output_30_08.rds" --samples 2 --transient 5 --thin 10 --verbose 1
