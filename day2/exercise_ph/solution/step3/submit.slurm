#!/bin/bash
#SBATCH --nodes 1
#SBATCH --time=00:10:00
#SBATCH --partition=gpu
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks-per-socket=1
#SBATCH --cpus-per-task=32
#SBATCH --gres=gpu:1
#SBATCH --job-name=phstep3
#SBATCH --error=err.job-%j
#SBATCH --output=out.job-%j
#SBATCH --hint=nomultithread
#SBATCH --reservation=maxgpu

export WORK=/ceph/hpc/data/d2021-135-users

module purge
module use ${WORK}/modules
module load QuantumESPRESSO/DEV-NVHPC-21.2

export ESPRESSO_PSEUDO=${PWD}/../../../pseudo
export OMP_NUM_THREADS=1

mpiopt="-mca pml ucx -mca btl ^uct,tcp,openib,vader --map-by socket:PE=32 --rank-by core "
mpirun $mpiopt -np 1 dynmat.x -ni 1 -nk 1 -i dyn.CnSnI3.in > dyn.CnSnI3.out
