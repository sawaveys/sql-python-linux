#!/bin/sh 

echo "Enter a value: " 
read a

echo "Enter b value: "
read b

if [[ $a =~ ^[+-]?[0-9]+$ ]]
then 
	if [[ $b =~ ^[+-]?[0-9]+$ ]]
	then 
		echo "Difference is " $(( a - b ))
	        else
                echo "Enter B as integer" 
        fi
else
        echo "Enter A as integer" 
fi
