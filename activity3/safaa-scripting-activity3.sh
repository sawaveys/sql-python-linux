#!/bin/sh


date=$(date +%Y%m%d).log
touch $date 

for i in 1 2 3 4 5; do echo $(shuf -i 1-50 -n1);done >> $date  

	for i in 1; do echo $(( $RANDOM % 10 + 1));done >> $date 

exit 0
