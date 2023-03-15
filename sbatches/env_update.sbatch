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
#SBATCH --mail-type=NONE
#SBATCH --chdir=/home/ehurt
#
#################################################
module load Miniconda3/4.4.10
. /opt/oscer/software/Miniconda3/4.4.10/etc/profile.d/conda.sh
# export CONDARC=/home/ehurt/.condarc
CONDA_PKGS_DIRS=/scratch/ehurt/pkgs
cd /scratch/ehurt/PytorchAMD && conda env update --prefix ./env --file ./environment.yml --prune || exit
conda activate ./env
conda info --envs

