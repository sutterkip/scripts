#!/bin/awk -f
#
BEGIN{print "#p B3LYP/6-311G(d,p) Opt\n\n comment \n\n 0 1"};
{if (NF == 4){print $0};}
END{print " "}
