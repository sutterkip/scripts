#!/bin/bash

# This appends a comment to an EPS file with the directory and the original filemname.
# Handy if you copy graphs to a local computer, rename them and then decide you want to
# regraph them later

dir=`pwd`
name=$1
echo "%% This file is located on thewho in" >> $1
echo "%% $dir" >> $1
echo "%% under the filename $name" >> $1
