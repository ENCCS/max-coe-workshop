#!/bin/bash
#SBATCH --job-name=USERjob
#SBATCH --nodes 1
#SBATCH --exclusive
#SBATCH --time=00:10:00
#SBATCH --partition=boost_usr_prod
#SBATCH --qos=boost_qos_dbg
#SBATCH --ntasks-per-node=...
#SBATCH --cpus-per-task=...
#SBATCH --gres=gpu:...
#SBATCH --output=sysout.out
#SBATCH --error=syserr.err
#SBATCH --account=EUHPC_TD02_030
# # SBATCH --mail-user=YOUR_EMAIL - if you want

module purge
module load profile/chem-phys
module load quantum-espresso

export EXDIR=${PWD}/..
export INDIR=${EXDIR}/inputs
export ESPRESSO_PSEUDO=${EXDIR}/../pseudo

export OMP_NUM_THREADS=...

for ip in ...
do
mpirun -np ... pw.x -npool "$ip" -i ${INDIR}/pw.CnSnI3.in > pw.CnSnI3.gpu.${ip}pools....omp.out
done
