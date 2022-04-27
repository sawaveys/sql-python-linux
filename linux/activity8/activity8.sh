#!/bin/sh

min=99999
max=-9999
sum=0
pro=1
avg=0
ch=y

#loop to read max 10 numbers 
echo "Enter 5 numbers: "
for((i=0;i<10;i++))
do
	#if to check for whether 5 numbers have been entered 
	if [ $i -gt 4 ]
	then 

		#asking for whether to enter number after 5th number 
		echo "enter" $(($i+1))"th number: y/n"
		read ch 

		#checking whether choice is 'no'
		if [ $ch = 'n' ]
		then 
			#breaking out of the loop if choice is no
			break 
		fi 

	fi

	#reading a number 
	read m

	#adding to an array 
	a[i]=$m

	#calculating sum
	sum=$(($sum+$m))

	#finding max value 
	if [ $m -gt $max ]
	then 
		max=$m
	fi 

	#finding the min value 
	if [ $m -lt $min ]
	then 
		min=$m
	fi 

	#calculating product value 
	pro=$(($pro*$m))
done 

#calculating average 
avg=$(($sum/$i))

#displaying results 
echo "Numbers entered by user: " ${a[@]}
echo "sum: " $sum
echo "min: " $min
echo "max: " $max 
echo "product: " $pro
echo "avg: " $avg 


