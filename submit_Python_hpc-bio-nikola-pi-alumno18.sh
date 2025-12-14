#!/bin/bash
#SBATCH -p hpc-bio-nikola-cpu
#SBATCH -J python_pi
#SBATCH --cpus-per-task=4
#SBATCH --chdir=/home/alumno18/lab-python
#SBATCH -o slurm-pi-python-%j.out

module load anaconda/2025.06

echo "Ejecutando cálculo de pi con Numba en nikola"
ipython pi-solution-alumno18.ipynb

module unload anaconda/2025.26
