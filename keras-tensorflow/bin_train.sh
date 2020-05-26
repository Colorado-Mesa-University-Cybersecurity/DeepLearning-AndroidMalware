#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --partition=sgpu
#SBATCH --output=k-tf-%j.out
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=cpjohnson@mavs.coloradomesa.edu

echo "Purging modules..."
module purge

echo "Loading modules..."
module load python/3.6.5
source activate keras_train
export KERAS_BACKEND=tensorflow

echo "== Training keras-tensorflow on binary classification =="
sleep 30
python bin_train.py
echo "== End of Job =="
