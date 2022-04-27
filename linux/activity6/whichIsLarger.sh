#!/bin/sh 

echo "Enter a vlaue: "
read a 

echo "Enter b value: "
read b

if [[ $a =~ ^[+-]?[0-9]+$ ]]
then 
	if [[ $b =~ ^[+-]?[0-9]+$ ]]
	then 
		if [ $a -gt $b ] 
		then 
			echo "True"
		else 
			echo "False"
		fi 
	else 
		echo "Enter B as integer" 
	fi 
else 
	echo "Enter A as integer" 
fi 
