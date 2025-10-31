#!/bin/bash
#SBATCH --job-name=USERjob
#SBATCH --nodes 1
#SBATCH --exclusive
#SBATCH --time=00:10:00
#SBATCH --partition=boost_usr_prod
#SBATCH --qos=boost_qos_dbg
#SBATCH --ntasks-per-node=8
#SBATCH --cpus-per-task=4
#SBATCH --output=sysout.out
#SBATCH --error=syserr.err
#SBATCH --account=EUHPC_TD02_030
# # SBATCH --mail-user=YOUR_EMAIL - if you want

source ../environment-cpu.sh
export ESPRESSO_DIR=/leonardo_work/Max3_devel_2/WP3/applications/q-e/QE7.2-INTEL/bin

export EXDIR=${PWD}/..
export INDIR=${EXDIR}/inputs
export ESPRESSO_PSEUDO=${EXDIR}/../pseudo

export OMP_NUM_THREADS=4

for ip in 1 2 4 8
do
mpirun -np 8 ${ESPRESSO_DIR}/pw.x -npool "$ip" -i ${INDIR}/pw.CnSnI3.in > pw.CnSnI3.cpu.${ip}pools.4omp.out
done
