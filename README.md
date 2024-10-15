# [HMSC-HPC](https://github.com/hmsc-r/hmsc-hpc) on Jean-Zay cluster

1. Connect to JZ
2. `git clone https://github.com/hmsc-r/hmsc-hpc.git`
3. `cd test_hmsc_hpc`
4. 
    - `module purge`
    - `module load tensorflow-gpu/py3/2.11.0`
    - `pip install ujson`
    - `pip install numpy`
    - `pip install scipy`
    - `pip install pandas`
    - `pip install pyreadr`
    - `pip install tensorflow_probability`

5. `sbatch test.slurm` 



