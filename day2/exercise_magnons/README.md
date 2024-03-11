## DAY-2, EXERCISE - Dynamical magnetic susceptibility of bulk iron

1. Run the SCF ground-state calculation with `pw.x`
   ```bash
   sbatch submit_pw.slurm
   ```

2. Perform Lanczos recursions with `turbo_magnon.x`
   ```bash
   sbatch submit_eels.slurm
   ```

3. Run the post-processing spectrum calculation with `turbo_spectrum.x`
   ```bash
   sbatch submit_spectrum.slurm
   ```
The output file `Femag.plot_chi.dat` contains the column `ipol` of the dynamical magnetic susceptibility 
for a given momentum transfer `q` chosen during the `turbo_magnon` calculation of step 2.

In the case of an iron bulk sample polarized along the z direction, it can be shown that the inelastic neutron scattering cross section is
proportional to the imaginary part of the `chi_yy` component, which can be extracted, eg, by doing 
```bash
grep chi_2_2 Femag.plot_chi.dat > Chi_2_2.dat
```


