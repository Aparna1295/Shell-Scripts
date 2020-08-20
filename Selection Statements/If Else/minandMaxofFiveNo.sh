#!/bin/bash -x

count=0;
min=999;
max=100;
#To get 5 numbers through Iterations
for number in {1..5};
do
	#Reads 3 digit number.
	number=$((RANDOM%(999-100+1)+100));
	
	if [ $number -lt $min ]
	then
	min=$number;
	fi

	if [ $number -gt $max ]
	then
	max=$number;
	fi

	#Increamenting counter for next Iterations
	count=$((count + 1));
	
	sleep 2;
done
	echo "The Minimum of $count numbers is:$min";
	echo "The Maximum of $count numbers is:$max";
 
