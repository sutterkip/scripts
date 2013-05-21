#!/bin/bash

if test -z $1
then
    echo "usage: create-adf-nboefg.sh ADF-inputfile"
    exit
fi

# input filename
INP=$1
FILENAME=`basename $INP .inp`

sed -e '/[rR][eE][lL][aA][tT][iI]/d' \
    -e '/[Ff][Uu][Ll][Ll][Ff][Oo][Cc][Kk]/d' \
    -e '/[Aa][Oo][Mm][Aa][Tt]2/d' \
    -e '/[Ss][Aa][Vv][Ee][Ff]/d' \
    -e '/[Ss][Yy][Mm][Mm][Ee][Tt][Rr][Yy]/d' \
    -e '/[Aa][Tt][Oo][Mm][Ss]/s/.*/relativistic scalar ZORA\naomat2file\nfullfock\nsavefile TAPE15 TAPE10\nsymmetry nosym\naoresponse\n efg 1 nbo\nend\n\nqtens\n\n\nATOMS/' \
    ${INP} > $$.scalar

cat <<EOF > $$.tmp
 
###### end scalar, run gennbo ##########


rm adfnbo*.kf
\$ADFBIN/adfnbo << eor
write
spherical
:: read
fock
end input
eor

rm adfnbo.37 adfnbo.39 adfnbo.49 adfnbo.48
\$ADFBIN/gennbo < FILE47

# run adfnbo in COPY mode (creates adfnbo2.kf with transformation matrices)

\$ADFBIN/adfnbo << eor
 spherical
 fock
 copy
end input
eor

# run adfnbo in READ mode (LocOrb -> TAPE21)

\$ADFBIN/adfnbo << eor
 spherical
 fock
 read
end input
eor


rm adfnbo.37 adfnbo.39 adfnbo.49 adfnbo.48

cp TAPE21 \$PBS_O_WORKDIR/${FILENAME}.t21

rm TAPE21 TAPE10 TAPE15 TAPE13

##### end gennbo

# redo scalar computation with NBO analysis

EOF

cat $$.scalar $$.tmp $$.scalar

rm $$.scalar $$.tmp 


