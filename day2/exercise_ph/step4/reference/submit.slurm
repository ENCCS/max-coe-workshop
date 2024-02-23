#!/bin/bash
#SBATCH --nodes 1
#SBATCH --time=00:20:00
#SBATCH --partition=gpu
#SBATCH --ntasks-per-node=2
#SBATCH --ntasks-per-socket=1
#SBATCH --cpus-per-task=32
#SBATCH --gres=gpu:2
#SBATCH --job-name=phstep4
#SBATCH --error=err.job-%j
#SBATCH --output=out.job-%j
#SBATCH --hint=nomultithread

export WORK=/ceph/hpc/data/d2021-135-users

module purge
module use ${WORK}/modules
module load QuantumESPRESSO/DEV-NVHPC-21.2

export ESPRESSO_PSEUDO=${PWD}/../../../pseudo
export OMP_NUM_THREADS=1

mpiopt="-mca pml ucx -mca btl ^uct,tcp,openib,vader --map-by socket:PE=32 --rank-by core "

mpirun $mpiopt -np 2 ph.x -ni 1 -nk 2 -i ph.CnSnI3.in > ph.CnSnI3.out
