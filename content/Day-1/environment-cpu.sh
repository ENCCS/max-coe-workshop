module purge
module load cmake
module load git
module load intel-oneapi-compilers
module load intel-oneapi-mpi
module load intel-oneapi-mkl

unset I_MPI_PMI_LIBRARY
export I_MPI_JOB_RESPECT_PROCESS_PLACEMENT=0
export I_MPI_PIN_CELL=core
export I_MPI_PIN_DOMAIN=omp
export I_MPI_DEBUG=5
