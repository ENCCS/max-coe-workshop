#!/bin/bash
#SBATCH --job-name=USERjob
#SBATCH --nodes 1
#SBATCH --exclusive
#SBATCH --time=00:20:00
#SBATCH --partition=boost_usr_prod
#SBATCH --qos=boost_qos_dbg
#SBATCH --ntasks-per-node= ... 
#SBATCH --cpus-per-task= ...
#SBATCH --output=sysout.out
#SBATCH --error=syserr.err
#SBATCH --account=EUHPC_TD02_030
# # SBATCH --mail-user=YOUR_EMAIL - if you want

source ../environment-cpu.sh
export ESPRESSO_DIR=/leonardo_work/EUHPC_TD02_030/builds/qe7.2/bin

export EXDIR=${PWD}/..
export INDIR=${EXDIR}/inputs
export ESPRESSO_PSEUDO=${EXDIR}/../pseudo

export OMP_NUM_THREADS= ...

mpirun -np ... ${ESPRESSO_DIR}/pw.x -npool 4 -i ${INDIR}/pw.CuO.scf.in > pw_run...mpix...omp.out

