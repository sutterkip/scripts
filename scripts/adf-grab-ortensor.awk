#!/bin/awk -f
#BEGIN{i=0;printf("{")};
/^ Optical rotation:/{getline;getline;
print "Optical Rotation Beta";
for (i = 1; i <= 3; i++) {
  # print $0;
  for (j = 1; j <= 3; j++) {array[i,j]=$j};
  if (i == 1) {printf(" {{ %f, %f, %f}, \n", $1, $2, $3)};
  if (i == 2) {printf(" { %f, %f, %f}, \n", $1, $2, $3)};
  if (i == 3) {printf(" { %f, %f, %f}} ", $1, $2, $3)};
  getline;
  };
 printf("\n\n");
# print molar rotation tensor
#print "Molar Rotation Tensor";
#for (i = 1; i <= 3; i++) {
#  # print $0;
#  if (i == 1) {printf(" {{ %f, %f, %f}, \n", array[i,1], array[i,2], array[i,3])};
#  if (i == 2) {printf(" { %f, %f, %f}, \n", $1, $2, $3)};
#  if (i == 3) {printf(" { %f, %f, %f}}\n\n ", $1, $2, $3)};
#};
}
#END{print "}"}

