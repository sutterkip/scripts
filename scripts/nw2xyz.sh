#!/bin/bash

#This script will parse an NWChem geometry optimization output

# Help the user out
conv=`grep "Optimization converged" $1`
if [ "$conv" = "" ];then
	echo "It seems the geometry did not converge."
	echo "Proceed anyway? [Y/n]"
	read user
	if [ "$user" = "n" -o "$user" = "N" ]; then
		exit 0
	fi
fi

#How many atoms are there?
natoms=`grep -m 1 "No. of atoms" $1 | awk '{print $5}'`
#How many geometries?
iter=`grep -c 'Geometry "geometry" -> "geometry"' $1`

#Parse the output
x=1
while [ $x -le $iter ]; do
	echo "$natoms"
	#echo "Geometry $x of $iter"
	echo "`grep -m $x -A 2 "Step       Energy      Delta" $1 | awk '{print $3}' | tail -n 1`"
	grep -m $x -A $((natoms + 6)) 'Geometry "geometry" -> "geometry"' $1 | \
		tail -n $natoms | \
		#awk  '{print  $2, "\t", $4, "\t", $5, "\t", $6}'
		awk  '{printf("%3s   %11s   %11s   %11s\n",$2, $4, $5, $6)}'
	let x=x+1
done
