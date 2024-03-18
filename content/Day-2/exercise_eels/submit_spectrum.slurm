#!/bin/bash
#SBATCH --job-name=specSi
#SBATCH --partition=lrd_all_serial
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=00:30:00
#SBATCH --account=EUHPC_TD02_030

module purge
module load profile/chem-phys
module load quantum-espresso/7.2--openmpi--4.1.4--gcc--11.3.0-openblas

export OMP_NUM_THREADS=1

mpirun -n 1 turbo_spectrum.x -i turbo_spectrum.Si.pp.in > turbo_spectrum.Si.pp.out


