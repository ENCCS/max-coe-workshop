#!/usr/bin/env gnuplot

cross_section = 'Sieels.plot_eps.dat'

set term x11 persist 
set tics nomirror
set border lw 2
set grid

set title 'EELS cross section for bulk Si at q = (0.866, 0, 0) 2pi/a'
set xlabel 'eV'
set ylabel '-Im(1/eps)' 
p cross_section u 1:3 w lp noti

