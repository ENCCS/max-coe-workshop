#!/bin/bash
echo "" > results.dat
for folder in ./benchmark_*; do
        jube continue $folder --id all
        jube analyse $folder --id all
	echo "$folder" >> results.dat
        jube result $folder --id all >> results.dat
done
#sed -i 's/\./,/g' results.dat
