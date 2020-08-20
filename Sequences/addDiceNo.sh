#!/bin/bash -x

#Initializing Iterations
count=0;

while [ $count -lt 3 ]
do
#Assigning random number between 1 to 6
	dice1=$((RANDOM%6));
	dice2=$((RANDOM%6));
#Adding 2 dice numbers
	result=$((dice1 +dice2));
	echo "The addition of numbers present on 2 dices is :$result"
	sleep 2;
#Increamenting counter for next Iterations
	count=$((count + 1));
done

