# DAY-2, EXERCISE - Phonon modes of CnSnI3 at Gamma

## pwscf simulation, step 1 #
 
Perform a vc-relax calculation for CnSnI3  using the pw.x program.

1. Copy `../inputs/pw.CnSnI3.in` in the current folder and modify the `&CONTROL` namelist to do a vc-relax calculation

   `calculation=""`

2. Open `submit.job` and modify npw to use R&G on 4 MPIs:GPUs
	
3. Submit the job file

   `sbatch submit.job`

   Check if convergence has been achieved.

4. Copy the output directory ( `out/` )in the folder of step2. 

   `cp -r ./out ../step2/`

