#!/bin/awk -f 
#
BEGIN{if (FILENAME == "") {print "usage: process-cpl-data2.awk filename"; 
print "this script will post-process adf CPL data"; exit}};
/C P L/{
  print " ";
  print "-----------------------------------------------------------------------------";
  print "Data File: ", FILENAME; print " ";
};
/^  Nucleus.*perturbing nucleus/{
  header=$0;
  print header;
# skip to principal axis system
  while ($0 !~"Principal Axis Representation") {getline;};
# 
# read out diamagnetic terms
  while ($0 !~ "diamagnetic orbital contribution") {getline;};
  getline;
  kdia[0,0] = $3; jdia[0,0] = $5; 
  #print kdia[0,0], jdia[0,0];
  for (i=1; i<=3; i++) {
    getline;
    for (j=1; j<=3; j++) {
      kdia[i,j] = $j;
      #print i,j,kdia[i,j];
    };
    for (j=4; j<=6; j++) {
      jdia[i,j-3] = $j;
    };
  };
  kdiaAv = (kdia[1,1] + kdia[2,2] + kdia[3,3] ) /3.0 ;
  jdiaAv = (jdia[1,1] + jdia[2,2] + jdia[3,3] ) /3.0 ;
  kdiaD = kdia[3,3] - ( kdia[2,2] + kdia[1,1] ) /2.0 ;
  jdiaD = jdia[3,3] - ( jdia[2,2] + jdia[1,1] ) /2.0 ;
  kdiaS = kdia[3,3] - kdia[1,1] ;
  jdiaS = jdia[3,3] - jdia[1,1] ;
  #print kdiaAv, jdiaAv
#
# read out paramagnetic terms
  while ($0 !~ "contribution") {getline;};
  getline;
  kpara[0,0] = $3; jpara[0,0] = $5; 
  #print kpara[0,0], jpara[0,0];
  for (i=1; i<=3; i++) {
    getline;
    for (j=1; j<=3; j++) {
      kpara[i,j] = $j;
      #print i,j,kpara[i,j];
    };
    for (j=4; j<=6; j++) {
      jpara[i,j-3] = $j;
    };
  };
  kparaAv = (kpara[1,1] + kpara[2,2] + kpara[3,3] ) /3.0 ;
  jparaAv = (jpara[1,1] + jpara[2,2] + jpara[3,3] ) /3.0 ;
  kparaD = kpara[3,3] - ( kpara[2,2] + kpara[1,1] ) /2.0 ;
  jparaD = jpara[3,3] - ( jpara[2,2] + jpara[1,1] ) /2.0 ;
  kparaS = kpara[3,3] - kpara[1,1]  ;
  jparaS = jpara[3,3] - jpara[1,1]  ;
  #print kparaAv, jparaAv
# read out spin terms
  while ($0 !~ "contribution") {getline;};
  getline;
  kfcsd[0,0] = $3; jfcsd[0,0] = $5; 
  #print kfcsd[0,0], jfcsd[0,0];
  for (i=1; i<=3; i++) {
    getline;
    for (j=1; j<=3; j++) {
      kfcsd[i,j] = $j;
      #print i,j,kfcsd[i,j];
    };
    for (j=4; j<=6; j++) {
      jfcsd[i,j-3] = $j;
    };
  };
  kfcsdAv = (kfcsd[1,1] + kfcsd[2,2] + kfcsd[3,3] ) /3.0 ;
  jfcsdAv = (jfcsd[1,1] + jfcsd[2,2] + jfcsd[3,3] ) /3.0 ;
  kfcsdD = kfcsd[3,3] - ( kfcsd[2,2] + kfcsd[1,1] ) /2.0 ;
  jfcsdD = jfcsd[3,3] - ( jfcsd[2,2] + jfcsd[1,1] ) /2.0 ;
  kfcsdS = kfcsd[3,3] - kfcsd[1,1];
  jfcsdS = jfcsd[3,3] - jfcsd[1,1];

  #print kfcsdAv, jfcsdAv
# read out total
  while ($0 !~ "total calculated") {getline;};
  getline;
  ktot[0,0] = $3; jtot[0,0] = $5; 
  #print ktot[0,0], jtot[0,0];
  for (i=1; i<=3; i++) {
    getline;
    for (j=1; j<=3; j++) {
      ktot[i,j] = $j;
      #print i,j,ktot[i,j];
    };
    for (j=4; j<=6; j++) {
      jtot[i,j-3] = $j;
    };
  };
  ktotAv = (ktot[1,1] + ktot[2,2] + ktot[3,3] ) /3.0 ;
  jtotAv = (jtot[1,1] + jtot[2,2] + jtot[3,3] ) /3.0 ;
  ktotD = ktot[3,3] - ( ktot[2,2] + ktot[1,1] ) /2.0 ;
  jtotD = jtot[3,3] - ( jtot[2,2] + jtot[1,1] ) /2.0 ;
  ktotS = ktot[3,3] - ktot[1,1] ;
  jtotS = jtot[3,3] - jtot[1,1] ;
  #print ktotAv, jtotAv
#
# write out results
  print "";
  print "                Tot      Spin-Mech.    PSO       DSO   ";
  print "-------------------------------------------------------";
  printf ("%-10s %10.3f %10.3f %10.3f %10.3f\n",\
	  "K(iso)",ktotAv, kfcsdAv, kparaAv, kdiaAv);
  printf ("%-10s %10.3f %10.3f %10.3f %10.3f\n",\
	  "K(aniso)",ktotD, kfcsdD, kparaD, kdiaD);
  printf ("%-10s %10.3f %10.3f %10.3f %10.3f\n",\
	  "K(Span)",ktotS, kfcsdS, kparaS, kdiaS);
  print "";
  printf ("%-10s %10.3f %10.3f %10.3f %10.3f\n",\
	  "J(iso)",jtotAv, jfcsdAv, jparaAv, jdiaAv);
  printf ("%-10s %10.3f %10.3f %10.3f %10.3f\n",\
	  "J(aniso)",jtotD, jfcsdD, jparaD, jdiaD);
  printf ("%-10s %10.3f %10.3f %10.3f %10.3f\n",\
	  "J(Span)",jtotS, jfcsdS, jparaS, jdiaS);
  print "";
}; # end /perturbing nucleus/
/N M R   E X I T/{
  print "End of data file ", FILENAME;
  print "";
};

