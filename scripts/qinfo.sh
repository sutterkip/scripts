#!/bin/bash

while [ "$1" != "" ]
do
case $1 in

 -u)	# Select a username
	username=$2
	shift 2;;

  *)    echo "You have entered an unspecified command line variable!"
        exit 1;;
esac
done

if [ -z "$username" ]; then

echo " "
qstat2 | egrep " Q | R " | awk '{print $3}' | sort -g | uniq -c | sort -g -r | awk '{printf "%-9s%-4s%-4s%-17s\n", $2, "has ",$1,"jobs in the queue"}'
echo " "

else
echo " "
echo "R/Q info for $username"
qstat2 | grep $username | awk '{print $4}' | sort -r | uniq -c | awk '{printf "%-4s%-9s%-1s\n", $1, "jobs are", $2}' 
echo " "
fi
