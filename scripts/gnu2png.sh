#!/bin/bash
file=$1
base=`basename $1 .gnu`
gnuplot << whipoorwill
load "$file"
set term png large color
set out "$base.png"
replot
set out
exit
whipoorwill
