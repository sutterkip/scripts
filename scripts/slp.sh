#!/bin/bash

USER=whoprint
COMPUTER=ja04.chem.buffalo.edu
DIRECTORY=/home/whoprint/queue
IDENTITY=~/.ssh/whoprint_idrsa

if [ ! -f ~/.ssh/whoprint_idrsa ]; then
	cp /san/projects1/jochena/shared/whoprint/whoprint_idrsa ~/.ssh/whoprint_idrsa
	chmod 600 ~/.ssh/whoprint_idrsa
fi


while [ "$1" != "" ] 
do 
case $1 in 
 -c)	COMPUTER=$2 #Overwrite above, if user specified
	DIRECTORY=/tmp
	shift 2;;
 -h)	echo " "
 echo "slp.sh file1 (only works on 1 file at a time currently)"
	echo "options are:"	
	echo "-c computer (if you are not sending files to the computer you usually work at.)"
	echo "	 You should probably specify \"-u username\" also"
	echo "-u username (use this if your desktop username is not \"whoprint\""
	exit 0;;
 -u)	# Override the default user-name
 	USER=$2
 	shift 2 ;;
 *)	files="$files $1"
	shift 1;;
esac
done

scp -i $IDENTITY $files $USER@$COMPUTER:$DIRECTORY
ssh -i $IDENTITY $USER@$COMPUTER "cd $DIRECTORY; lp $files; rm $files"
