#!/bin/bash
#SBATCH --job-name=pwFe
#SBATCH --partition=boost_usr_prod
#SBATCH --qos=boost_qos_dbg
#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --cpus-per-task=1
#SBATCH --time=00:30:00
#SBATCH --account=EUHPC_TD02_030

module purge
module load intel-oneapi-compilers
module load intel-oneapi-mpi
module load intel-oneapi-mkl

unset I_MPI_PMI_LIBRARY
export I_MPI_JOB_RESPECT_PROCESS_PLACEMENT=0
export I_MPI_PIN_CELL=core
export I_MPI_PIN_DOMAIN=omp
export I_MPI_DEBUG=5

export ESPRESSO_DIR=/leonardo_work/EUHPC_TD02_030/builds/qe7.2/bin

export OMP_NUM_THREADS=1

mpirun -np 16 ${ESPRESSO_DIR}/pw.x -nk 16 -i pw.Fe.scf.in > pw.Fe.scf.out

