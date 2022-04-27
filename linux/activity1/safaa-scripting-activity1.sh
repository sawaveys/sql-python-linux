#!/bin/sh 

currentDate=$(date "+%D")
currentTime=$(date "+%T")
currentDirectory=$(pwd)
filesInDirectory=$(ls | wc -l)
biggestFile=$(sudo find / -xdev -type f -size +100M)

echo "You are" $USER
echo "Today's date is" $currentDate
echo "The time is" $currentTime
echo "You're in" $currentDirectory "directory"
echo "You have" $filesInDirectory "in" $currentDirectory 
echo $biggestFile "is your largest file"

exit 0 

 
