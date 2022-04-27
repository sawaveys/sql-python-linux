#!/bin/sh

echo "File Name: $1";
echo "No of Lines: $2";
FILE=$1
RANDOM=$$
if [[ -f "$1" ]]; then 
	echo "$1 exist try with different file name"
else 
	for ((i=0;i<$2;i++))
	do
		echo $RANDOM >> $FILE
	done 
fi 
