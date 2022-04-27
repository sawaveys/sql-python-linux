#!/bin/sh

a=0
array=(1 2 3 4 5 )

while [ $a -lt 5 ]
do 
	b=$((1+ $RANDOM % 10))
	array[$a]=$b

	a=`expr $a + 1`
done

read -p "Enter your lottery number: " n

i=0
count=0
while [ $i -lt 5 ]
do 
	curr=${array[$i]}
	if [ $curr == n ]
	then 
		count= `expr $count +1`
	fi
	i=`expr $i +1`
done

echo number of matches: $count 
echo $(date +"%c") : $count >>lottery.txt

