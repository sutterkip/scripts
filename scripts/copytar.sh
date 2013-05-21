#!/bin/bash

#This script will parse an NWChem geometry optimization output
dir=`pwd`
echo 'deleting file allfile.tar.gz'
rm allfile.tar.gz
echo $dir
echo 'compressing now all files'
tar -czvf allfile.tar.gz  *
read -p 'Ready to copy files to the who shared drive? Press any key:'
scp allfile.tar.gz kiplanga@thewho:/projects/jochena/shared/sutter/
