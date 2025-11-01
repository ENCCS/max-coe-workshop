# DAY-2, EXERCISE - Phonon modes of CnSnI3 at Gamma

## phonon calculation, step2
 
Perform a phonon calculation at Gamma for CnSnI3 using the ph.x program.

1. Copy `../inputs/ph.CnSnI3.in` in the current folder and modify the `&inputph` namelist ; add coordinates of the Gamma point

	```
   	&inputph
		prefix=''
		amass(1)=
		amass(2)=
		amass(3)=
	/
	X	Y	Z
	```

2. Submit the jobfile to run `ph.x` on 1 MPI : GPU

3. Check the number of k points

	`awk '/number of k/' ph.CnSnI3.out`

4. Check the number of irreducible representations

	`awk '/irreducible/' ph.CnSnI3.out`

5. Check the dynamical matrix in dynmat.out

	`tail -n 97 harmdyn_support`


