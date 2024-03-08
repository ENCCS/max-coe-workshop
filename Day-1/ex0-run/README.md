EXERCISE 0 - First serial run
=================================================

We will only use pw.x for this hands-on.  
The executable of QEv7.2 for CPU is compiled in the directory:

        /leonardo_work/EUHPC_TD02_030/builds/qe7.2/bin

Check that the module works by submitting a quick serial test.  
Open the Slurm batch file, fill the dots with the right numbers/commands (dots at lines 3, 8, 9, 22, 25) and submit it:

        sbatch ex0-run.slurm

To see the submission status of your job:

        squeue -u YOUR_USERNAME
