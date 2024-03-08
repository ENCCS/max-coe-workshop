# DAY-2, EXERCISE - Phonon modes of CnSnI3 at Gamma

## multi gpu offload with images, step 5 #
 
Perform a phonon calculation at Gamma on 4 GPUs for CnSnI3 using the `ph.x` program.

1. Copy the input of step2 `../step2/ph.CnSnI3.in`

2. Copy `ph.CnSnI3.in` as `ph.CnSnI3.recover.in` and add `recover=.true.` in `&inputph`

3. Copy the `../step1/out` directory in the current folder

4. Modify nimages in submit.slurm to distribute the calculation on 4 MPIs : GPUs with image parallelization
 
5. Submit the jobfile

	`sbatch submit.slurm`

6. With image parallelism there is 1 output file for each image. These are named `out.*_0`, with * the image rank. 
   Check the workload of each image

        `awk '/I am image/ {x=NR+3} (NR<=x) {print $0} ' out.*_0`

6. Compare wall times. Which images takes the longest time ? Why ?

