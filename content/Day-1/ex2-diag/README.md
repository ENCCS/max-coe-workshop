EXERCISE 2 - Parallelization of the eigenvalue problem
=======================================================

Play with the ndiag parameter by performing a number of runs and seeing variations in the WALL time (if any).  
You can also change the fixed value of npools (the default value for this exercise is 4).

1. Replace the dots with a list of proper values for ndiag, e.g:
       
        for id in 1 2 3 4 5 6     -not necessarily the right values here!
        do

2. Submit the job file:

        sbatch ./ex2-diag.slurm

3. Check the total WALL time at the end of the output file and plot TIME(ndiag).  
   Which is the best ndiag value (if any)? Why?
