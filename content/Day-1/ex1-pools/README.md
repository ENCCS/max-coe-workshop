EXERCISE 1 - Parallelization with pools
=================================================

Try to predict the best value of npool and check it by performing a series of runs.

1. Open the batch file 'ex1-pools.slurm' and customize the user-related SLURM options like job-name and mail-user (not essential at all);  
Replace the dots with a list of proper values for npool, e.g:
       
        for ip in 1 2 3 4 5 6     -not necessarily the right values here!
        do

2. Submit the job file:

        sbatch ex1-pools.slurm

3. Look for total WALL time at the end of each output file:

     	PWSCF        :   2m 0.69s CPU   2m 5.06s WALL

and plot TIME(npool). Which is the best npool value? Why?

4. You can try with different numbers of MPI tasks.
