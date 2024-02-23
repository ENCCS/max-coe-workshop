#!/bin/bash
#SBATCH --nodes 1
#SBATCH --time=00:30:00
#SBATCH --partition=gpu
#SBATCH --ntasks-per-node=4
#SBATCH --ntasks-per-socket=2
#SBATCH --cpus-per-task=32
#SBATCH --gres=gpu:4
#SBATCH --job-name=phstep5
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

mpirun $mpiopt -np 4 ph.x -ni nimages -nk 1 -i ph.CnSnI3.in > out.0_0
mpirun $mpiopt -np 1 ph.x -ni 1 -nk 1 -i ph.CnSnI3.recover.in > ph.CnSnI3.recover.out
