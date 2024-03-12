SIESTA setup
============

Directory with tutorials
------------------------
For every practical there is a folder in the shared directory
``/leonardo_work/EUHPC_TD02_030/siesta-tutorials`` that contains all the files
you will need for said practical. At the start of every tutorial, please copy
the required files from that shared directory to your scratch folder. For
example, for the first tutorial::

$ cp -pr /leonardo_work/EUHPC_TD02_030/siesta-tutorials/01-FirstEncounter_I .

Please do NOT copy these files before the start of the practical, in case they
are updated shortly before the practical starts.


Running SIESTA
--------------
You will find a sample script on how to run SIESTA in
``/leonardo_work/EUHPC_TD02_030/softwares/siesta-5.0beta1/runsample.sh``: ::

    #!/bin/bash
    #SBATCH -J tutorialXX
    #SBATCH -n 8
    #SBATCH -t 0:30:00
    #SBATCH -o %x-%j.out
    #SBATCH -e %x-%j.err
    #SBATCH --partition=boost_usr_prod
    #SBATCH -D .

    # DO NOT CHANGE THIS LINE
    source /leonardo_work/EUHPC_TD02_030/softwares/siesta-5.0beta1/siestarc.sh

    # EDIT THE CORRECT INPUT AND OUTPUT FILES.
    srun -n 8 siesta < input.fdf > output.out


Note that ``input.fdf`` and ``output.out`` are generic input and output file names, for
each execution of siesta you will need to change them to the actual names of
your input and output files. It is also convenient to change the name of the job
(``#SBATCH -J option``) to something that allows you to identify (vs. your other
submissions) when checking the status of the queue.



Suggested Software for Visualization
------------------------------------
If you run visualizations in your own PC, you may want to have a few of these
installed. Some are redundant, and will depend on your own preferences.

- `gnuplot <http://www.gnuplot.info/>`_
- `xcrysden <http://www.xcrysden.org/>`_
- `vesta <https://jp-minerals.org/vesta/en/>`_
- `vmd <https://www.ks.uiuc.edu/Research/vmd/>`_
- `ovito <https://www.ovito.org/about/>`_
- Python with matplotlib



SIESTA source code
------------------
If you want to try your own SIESTA compilation, have a look at this `SIESTA
compilation how-to <https://docs.siesta-project.org/projects/siesta/en/latest/installation/quick-install.html>`_ .
Be sure to have all dependencies beforehand. Note that we will not be answering
questions regarding compilation or other installations during the school.

