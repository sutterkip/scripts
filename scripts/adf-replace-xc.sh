#!/bin/bash

in=$1

# remove any existing XC key and replace it with something
# here we make sure VWN is specified
cat <<EOF >> $$.tmp
{if (\$1 !~ /[Xx][Cc]/){print \$0} 
else 
#{while (\$1 !~ /[Ee][Nn][Dd]/){getline}};
if (NF == 1){
print "usespcode";
print "XC";
getline;
if (\$1 !~ /[Hh][Yy][Bb][Rr][Ii][Dd]/){
if (\$1 !~ /[Ll][Dd][Aa]/){
print " lda VWN"};
print \$0}
else {print \$0};
}}
EOF

awk -f $$.tmp $in > $in.tmp

rotate-file $in
mv $in.tmp $in

rm $$.tmp

