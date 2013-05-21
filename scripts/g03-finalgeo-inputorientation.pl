#!/usr/bin/perl -w

#  Maciej Haranczyk and Sanliang Ling, 2007
#  This script extract the last geometry from g03 output file.
#  This is a GNU program. GNU license is provided in gpl.txt file.

#  First line shows the location of perl 
#  remember to chmod 700 g03_fingeom

#  USAGE:
#  g03_fingeom.plx  < filename.log
#
#  or
#
#  perl g03_fingeom.plx < filename.log

$n_atoms = 0;
while ($line = <STDIN>) {
  if($line =~ /Input orientation/) {

    $line = <STDIN>;
    $line = <STDIN>;
    $line = <STDIN>;
    $line = <STDIN>;

   $line = <STDIN>;

    $n_atoms = 0;

   do {

         chop($line);

         if ($line =~ /\S/) {
          $n_atoms++;
          @entries = split(/\s+/,$line);
          for($j = 1; $j <= $n_atoms; $j++) {
          	if($entries[2] == 1) {
          	$symb[$n_atoms] = "H";}
          	  elsif ($entries[2] == 2) {
          		$symb[$n_atoms] = "He";}
          		elsif ($entries[2] == 3) {
          		$symb[$n_atoms] = "Li";}
          		elsif ($entries[2] == 4) {
          		$symb[$n_atoms] = "Be";}
          		elsif ($entries[2] == 5) {
          		$symb[$n_atoms] = "B";}
          		elsif ($entries[2] == 6) {
          		$symb[$n_atoms] = "C";}
          		elsif ($entries[2] == 7) {
          		$symb[$n_atoms] = "N";}
          		elsif ($entries[2] == 8) {
          		$symb[$n_atoms] = "O";}
          		elsif ($entries[2] == 9) {
          		$symb[$n_atoms] = "F";}
          		elsif ($entries[2] == 10) {
          		$symb[$n_atoms] = "Ne";}
          		elsif ($entries[2] == 11) {
          		$symb[$n_atoms] = "Na";}
          		elsif ($entries[2] == 12) {
          		$symb[$n_atoms] = "Mg";}
          		elsif ($entries[2] == 13) {
          		$symb[$n_atoms] = "Al";}
          		elsif ($entries[2] == 14) {
          		$symb[$n_atoms] = "Si";}
          		elsif ($entries[2] == 15) {
          		$symb[$n_atoms] = "P";}
          		elsif ($entries[2] == 16) {
          		$symb[$n_atoms] = "S";}
          		elsif ($entries[2] == 17) {
          		$symb[$n_atoms] = "Cl";}
          		elsif ($entries[2] == 18) {
          		$symb[$n_atoms] = "Ar";}
          		elsif ($entries[2] == 19) {
          		$symb[$n_atoms] = "K";}
          		elsif ($entries[2] == 20) {
          		$symb[$n_atoms] = "Ca";}
          		elsif ($entries[2] == 21) {
          		$symb[$n_atoms] = "Sc";}
          		elsif ($entries[2] == 22) {
          		$symb[$n_atoms] = "Ti";}
          		elsif ($entries[2] == 23) {
          		$symb[$n_atoms] = "V";}
          		elsif ($entries[2] == 24) {
          		$symb[$n_atoms] = "Cr";}
          		elsif ($entries[2] == 25) {
          		$symb[$n_atoms] = "Mn";}
          		elsif ($entries[2] == 26) {
          		$symb[$n_atoms] = "Fe";}
          		elsif ($entries[2] == 27) {
          		$symb[$n_atoms] = "Co";}
          		elsif ($entries[2] == 28) {
          		$symb[$n_atoms] = "Ni";}
          		elsif ($entries[2] == 29) {
          		$symb[$n_atoms] = "Cu";}
          		elsif ($entries[2] == 30) {
          		$symb[$n_atoms] = "Zn";}
          		elsif ($entries[2] == 31) {
          		$symb[$n_atoms] = "Ga";}
          		elsif ($entries[2] == 32) {
          		$symb[$n_atoms] = "Ge";}
          		elsif ($entries[2] == 33) {
          		$symb[$n_atoms] = "As";}
          		elsif ($entries[2] == 34) {
          		$symb[$n_atoms] = "Se";}
          		elsif ($entries[2] == 35) {
          		$symb[$n_atoms] = "Br";}
          		elsif ($entries[2] == 36) {
          		$symb[$n_atoms] = "Kr";}
          		elsif ($entries[2] == 37) {
          		$symb[$n_atoms] = "Rb";}
          		elsif ($entries[2] == 38) {
          		$symb[$n_atoms] = "Sr";}
          		elsif ($entries[2] == 39) {
          		$symb[$n_atoms] = "Y";}
          		elsif ($entries[2] == 40) {
          		$symb[$n_atoms] = "Zr";}
          		elsif ($entries[2] == 41) {
          		$symb[$n_atoms] = "Nb";}
          		elsif ($entries[2] == 42) {
          		$symb[$n_atoms] = "Mo";}
          		elsif ($entries[2] == 43) {
          		$symb[$n_atoms] = "Tc";}
          		elsif ($entries[2] == 44) {
          		$symb[$n_atoms] = "Ru";}
          		elsif ($entries[2] == 45) {
          		$symb[$n_atoms] = "Rh";}
          		elsif ($entries[2] == 46) {
          		$symb[$n_atoms] = "Pd";}
          		elsif ($entries[2] == 47) {
          		$symb[$n_atoms] = "Ag";}
          		elsif ($entries[2] == 48) {
          		$symb[$n_atoms] = "Cd";}
          		elsif ($entries[2] == 49) {
          		$symb[$n_atoms] = "In";}
          		elsif ($entries[2] == 50) {
          		$symb[$n_atoms] = "Sn";}
          		elsif ($entries[2] == 51) {
          		$symb[$n_atoms] = "Sb";}
          		elsif ($entries[2] == 52) {
          		$symb[$n_atoms] = "Te";}
          	        elsif ($entries[2] == 53) {
          		$symb[$n_atoms] = "I";}
          		elsif ($entries[2] == 54) {
          		$symb[$n_atoms] = "Xe";}
          		elsif ($entries[2] == 55) {
        		$symb[$n_atoms] = "Cs";}
       			elsif ($entries[2] == 56) {
          		$symb[$n_atoms] = "Ba";}
          		elsif ($entries[2] == 57) {
          		$symb[$n_atoms] = "La";}
          		elsif ($entries[2] == 58) {
          		$symb[$n_atoms] = "Ce";}
          		elsif ($entries[2] == 59) {
          		$symb[$n_atoms] = "Pr";}
          		elsif ($entries[2] == 60) {
          		$symb[$n_atoms] = "Nd";}
          		elsif ($entries[2] == 61) {
          		$symb[$n_atoms] = "Pm";}
          		elsif ($entries[2] == 62) {
          		$symb[$n_atoms] = "Sm";}
          		elsif ($entries[2] == 63) {
          		$symb[$n_atoms] = "Eu";}
          		elsif ($entries[2] == 64) {
          		$symb[$n_atoms] = "Gd";}
          		elsif ($entries[2] == 65) {
          		$symb[$n_atoms] = "Tb";}
          		elsif ($entries[2] == 66) {
          		$symb[$n_atoms] = "Dy";}
          		elsif ($entries[2] == 67) {
          		$symb[$n_atoms] = "Ho";}
          		elsif ($entries[2] == 68) {
          		$symb[$n_atoms] = "Er";}
          		elsif ($entries[2] == 69) {
          		$symb[$n_atoms] = "Tm";}
          		elsif ($entries[2] == 70) {
          		$symb[$n_atoms] = "Yb";}
          		elsif ($entries[2] == 71) {
          		$symb[$n_atoms] = "Lu";}
          		elsif ($entries[2] == 72) {
          		$symb[$n_atoms] = "Hf";}
          		elsif ($entries[2] == 73) {
          		$symb[$n_atoms] = "Ta";}
          		elsif ($entries[2] == 74) {
          		$symb[$n_atoms] = "W";}
          		elsif ($entries[2] == 75) {
          		$symb[$n_atoms] = "Re";}
          		elsif ($entries[2] == 76) {
          		$symb[$n_atoms] = "Os";}
          		elsif ($entries[2] == 77) {
          		$symb[$n_atoms] = "Ir";}
          		elsif ($entries[2] == 78) {
          		$symb[$n_atoms] = "Pt";}
          		elsif ($entries[2] == 79) {
          		$symb[$n_atoms] = "Au";}
          		elsif ($entries[2] == 80) {
          		$symb[$n_atoms] = "Hg";}
          		elsif ($entries[2] == 81) {
          		$symb[$n_atoms] = "Tl";}
          		elsif ($entries[2] == 82) {
          		$symb[$n_atoms] = "Pb";}
          		elsif ($entries[2] == 83) {
          		$symb[$n_atoms] = "Bi";}
          		elsif ($entries[2] == 84) {
          		$symb[$n_atoms] = "Po";}
          		elsif ($entries[2] == 85) {
          		$symb[$n_atoms] = "At";}
          		elsif ($entries[2] == 86) {
          		$symb[$n_atoms] = "Rn";}
          		elsif ($entries[2] == 87) {
          		$symb[$n_atoms] = "Fr";}
          		elsif ($entries[2] == 88) {
          		$symb[$n_atoms] = "Ra";}
          		elsif ($entries[2] == 89) {
          		$symb[$n_atoms] = "Ac";}
          		elsif ($entries[2] == 90) {
          		$symb[$n_atoms] = "Th";}
          		elsif ($entries[2] == 91) {
          		$symb[$n_atoms] = "Pa";}
          		elsif ($entries[2] == 92) {
          		$symb[$n_atoms] = "U";}
          		elsif ($entries[2] == 93) {
          		$symb[$n_atoms] = "Np";}
          		elsif ($entries[2] == 94) {
          		$symb[$n_atoms] = "Pu";}
          		elsif ($entries[2] == 95) {
          		$symb[$n_atoms] = "Am";}
          		elsif ($entries[2] == 96) {
          		$symb[$n_atoms] = "Cm";}
          		elsif ($entries[2] == 97) {
          		$symb[$n_atoms] = "Bk";}
          		elsif ($entries[2] == 98) {
          		$symb[$n_atoms] = "Cf";}
          		elsif ($entries[2] == 99) {
          		$symb[$n_atoms] = "Es";}
          		elsif ($entries[2] == 100) {
          		$symb[$n_atoms] = "Fm";}
          		elsif ($entries[2] == 101) {
          		$symb[$n_atoms] = "Md";}
          		elsif ($entries[2] == 102) {
          		$symb[$n_atoms] = "No";}
          		elsif ($entries[2] == 103) {
          		$symb[$n_atoms] = "Lr";}
          		elsif ($entries[2] == 104) {
          		$symb[$n_atoms] = "Rf";}
          		elsif ($entries[2] == 105) {
          		$symb[$n_atoms] = "Db";}
          		elsif ($entries[2] == 106) {
          		$symb[$n_atoms] = "Sg";}
          		elsif ($entries[2] == 107) {
          		$symb[$n_atoms] = "Bh";}
          		elsif ($entries[2] == 108) {
          		$symb[$n_atoms] = "Hs";}
          		elsif ($entries[2] == 109) {
          		$symb[$n_atoms] = "Mt";}
          				else {
          					$symb[$n_atoms] = "Z";
          					}
          				}
          $x[$n_atoms] = $entries[4];
          $y[$n_atoms] = $entries[5];
          $z[$n_atoms] = $entries[6];
   $line = <STDIN>;

    } }
  while(!($line =~ /--/));
    }
  }
 
 
printf STDOUT "%d\r\n", $n_atoms;
print ("0.0  0.0000000\r\n");
for($i = 1; $i <= $n_atoms; $i++) {
  printf STDOUT "%s %16.7f %16.7f %16.7f\r\n",
         $symb[$i],$x[$i], $y[$i], $z[$i];
  }


