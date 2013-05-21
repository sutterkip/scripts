#!/bin/awk -f
#BEGIN{i=0;printf("{")};
/TOTAL Shielding Tensor/{getline;getline;
for (i = 1; i <= 3; i++) {
  # print $0;
  if (i == 1) {printf(" {{ %f, %f, %f}, \n", $1, $2, $3)};
  if (i == 2) {printf(" { %f, %f, %f}, \n", $1, $2, $3)};
  if (i == 3) {printf(" { %f, %f, %f}} ", $1, $2, $3)};
  getline;
  };
 printf("\n\n");
}
#END{print "}"}

