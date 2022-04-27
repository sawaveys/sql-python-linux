#!/bin/sh

#Write a script that takes a file name as a parameter.

#If the file exists, print an error and return a code.
#If the file does not exist, create the file.

read -p "Enter your file name: " fileName
if [ -f $fileName ]
then
	echo "ERROR: " $?
else 
	touch $fileName
fi
