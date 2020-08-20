#!/bin/bash -x
count=0;
result=0;
avg=0
#To get 5 numbers alongwith their Sum and Average through Iterations
for number in {1..5};
do
	#Reads 2 digit number.
	number=$((RANDOM%(99-10+1)+10));
	#Adding numbers to result 
	result=$((result+number));
	#Increamenting counter for next Iterations
	count=$((count + 1));
	echo "The addition after $count Iteration is :$result";
	avg=$((result/count));
	echo "The Average of $count numbers:$avg";
	sleep 2;
done
	echo "The addition of $count numbers is:$result";
	echo "The Average of $count numbers is:$avg";
 
