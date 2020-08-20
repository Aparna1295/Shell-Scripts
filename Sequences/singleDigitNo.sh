#!/bin/bash -x
#Intialize number of Iterations
count=0;
#Assigning random signle digit number

while [ $count -lt 5 ]
do
	number=$((RANDOM%10));
	sleep 2;
	count=$((count + 1));
done
