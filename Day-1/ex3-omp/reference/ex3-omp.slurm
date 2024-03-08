#!/bin/bash
#SBATCH --job-name=USERjob
#SBATCH --nodes 1
#SBATCH --exclusive
#SBATCH --time=00:20:00
#SBATCH --partition=boost_usr_prod
#SBATCH --qos=boost_qos_dbg
#SBATCH --ntasks-per-node=16  
#SBATCH --cpus-per-task=2
#SBATCH --output=sysout.out
#SBATCH --error=syserr.err
#SBATCH --account=EUHPC_TD02_030
# # SBATCH --mail-user=YOUR_EMAIL - if you want

source ../environment-cpu.sh
export ESPRESSO_DIR=/leonardo_work/Max3_devel_2/WP3/applications/q-e/QE7.2-INTEL/bin

export EXDIR=${PWD}/..
export INDIR=${EXDIR}/inputs
export ESPRESSO_PSEUDO=${EXDIR}/../pseudo

export OMP_NUM_THREADS=2

mpirun -np 16 ${ESPRESSO_DIR}/pw.x -npool 4 -i ${INDIR}/pw.CuO.scf.in > pw_run16mpix2omp.out

