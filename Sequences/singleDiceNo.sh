#!/bin/bash -x
#Intialize number of Iterations
count=0;
#Assigning random number between 1 to 6

while [ $count -lt 6 ]
do
	number=$((RANDOM%6));
	sleep 2;
	count=$((count + 1));
done
