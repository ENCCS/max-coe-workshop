#!/usr/bin/env gnuplot

cross_section = 'Chi_2_2.dat'

set term x11 persist 
set tics nomirror
set border lw 2
set grid

set title 'Magnetic susceptibility for bulk Fe at q = (0.1, 0.1, 0) 2pi/a'
set xlabel 'meV'
set ylabel 'mu_B^2 / meV' 
p cross_section u 2:4 w lp noti

