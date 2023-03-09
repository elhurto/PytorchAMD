#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem=1024
#SBATCH --output=/scratch/ehurt/PytorchAMD/sbatches/jobname_%J_stdout.txt
#SBATCH --error=/scratch/ehurt/PytorchAMD/sbatches/jobname_%J_stderr.txt
#SBATCH --time=12:00:00
#SBATCH --job-name=createenv
#SBATCH --mail-user=ehurt@ou.edu
#SBATCH --mail-type=ALL
#SBATCH --chdir=/home/ehurt
#
#################################################

# 
cd /scratch/ehurt/PytorchAMD && conda create --prefix ./env requests gymnasium numpy seaborn matplotlib pandas tqdm typing pytorch ipython wget -y
conda activate ./env
conda info --envs

