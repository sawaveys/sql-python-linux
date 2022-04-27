#!/bin/sh


echo "Enter your password"
read password 
len="${#password}"
if [ test $len -gt 8 ] 

then 
	echo "$password"|grep -q[0-9]
	if [test $? -eq 0]
then 
	echo "$password"|grep -q[A-Z]
	if [test $? -eq 0] 
then 
	echo "$password"|grep -q[a-z]
	if [test $? -eq 0] 
then 
		echo "Strong password"
else 
		echo "Weak password, please include lowercase characters"
	fi
else 	
	echo "Weak password, please include uppercase characters"
	fi
else 	
	echo "Please add numbers to your password"
	fi
else	
	echo "Password length should be at least 8 characters" 
fi	
