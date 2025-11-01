# DAY-2, EXERCISE - Phonon modes of CnSnI3 at Gamma

# Multi GPU offload with pools, step 4 #
 
Perform a phonon calculation at Gamma on 2 GPUs for CnSnI3 using the `ph.x` program.

1. Copy the input of step2 `../step2/ph.CnSnI3.in` in the current folder

2. Copy the `../step1/out` directory in the current folder

3. Modify npools in submit.slurm to distribute the calculation on 2 MPIs : GPUs with pool parallelization

4. Submit the jobfile

	`sbatch submit.slurm`

5. Check wall time of parallel execution

	`tail ph.CnSnI3.out`
