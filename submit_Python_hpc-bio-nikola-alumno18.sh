#!/bin/bash
#SBATCH -p hpc-bio-nikola-cpu
#SBATCH -J python_numba
#SBATCH --cpus-per-task=1
#SBATCH --chdir=/home/alumno18/lab-python
#SBATCH -o slurm-python-%j.out

module load anaconda/2025.06

echo "Ejecutando notebook con N=$1"
ipython reduc-operation-alumno18.ipynb $1

module unload anaconda/2025.26
