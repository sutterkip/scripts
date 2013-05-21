#!/bin/bash
for i
do
file=$i
base=`basename $i .gnu`
gnuplot << whipoorwill
load "$file"
set term postscript enhanced color eps 'Helvetica' 20
set out "$base-color.eps"
replot
set out
exit
whipoorwill
# This is another script I wrote; might as well do it all at once.
if [ -f `which tag-eps.sh` ]; then
tag-eps.sh $base-color.eps
echo "$base-color.eps has been tagged"
fi
done
