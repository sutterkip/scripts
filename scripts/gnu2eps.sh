#!/bin/bash
for i
do
file=$i
base=`basename $i .gnu`
gnuplot << whipoorwill
load "$file"
set term postscript enhanced eps 'Helvetica' 20
set out "$base.eps"
replot
set out
exit
whipoorwill
# This is another script I wrote; might as well do it all at once.
if [ -f `which tag-eps.sh` ]; then
tag-eps.sh $base.eps
echo "$base.eps has been tagged"
fi
done
