# DAY-2, EXERCISE - Electron energy-loss spectroscopy (EELS) for bulk silicon 

1. Run the SCF ground-state calculation with `pw.x`
   ```bash
   sbatch submit_pw.slurm
   ```

2. Perform Lanczos recursions with `turbo_eels.x`
   ```bash
   sbatch submit_eels.slurm
   ```

3. Run the post-processing spectrum calculation with `turbo_spectrum.x`
   ```bash
   sbatch submit_spectrum.slurm
   ```

The output files `Sieels.plot_chi.dat` and `Sieels.plot_eps.dat` contain, respectively, 
the dynamical charge susceptibility and the dynamical dielectric function computed for the 
momentum transfer `q` chosen for the `turbo_eels` calculation of step 2.

