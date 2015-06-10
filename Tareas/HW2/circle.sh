#!/bin/bash
gnuplot<<EOF
r=$1
xlim=1
ylim=1
set term dumb
set parametric
set size ratio 0.5
set xrange [xlim:-xlim]
set yrange [ylim:-ylim]
plot r*cos(t),r*sin(t) 
EOF
