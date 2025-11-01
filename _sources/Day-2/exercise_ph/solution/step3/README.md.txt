# DAY-2, EXERCISE - Phonon modes of CnSnI3 at Gamma

## ASR rule application, step 3
 
Apply the Acoustic Sum Rule (ASR) with `dynmat.x`

1. Copy `../inputs/dyn.CnSnI3.in` and add the `‘crystal’` ASR rule

	```
	&input
		asr=''
	```

2. Copy `../step2/harmdyn_support` in the current folder

3. Submit the job 

4. Check phonon frequencies with ASR rule applied in `dyn.CnSnI3.out`


