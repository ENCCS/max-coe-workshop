EXERCISE 3 - MPI + OpenMP parallelization
===============================================

Find out how to best exploit the available CPU resources, by playing with the MPI-related parameters (number of tasks, npools) together with the number of threads.  
Use the batch file 'ex3-omp.slurm' to submit your jobs (modify it at your convenience).  
Hints:

0. Know the size of your node, e.g. the amount of cores at your disposal (https://wiki.u-gov.it/confluence/display/SCAIUS/UG3.2%3A+LEONARDO+UserGuide);

1. See how the time scaling of your jobs changes just by varying the number of tasks (keep just 1 thread each at first).  
   Adapt the npool parameter at each run.

2. Now you can start to explore the OpenMP parallelization by varying the number of threads.

3. Do multiple WALL_TIME plots as a function of the number of MPI tasks and OpenMP threads.
   Which is the best configuration for this exercise?
