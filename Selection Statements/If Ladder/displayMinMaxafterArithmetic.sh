#!/bin/bash -x

min=99;
max=10;

#Reads 2 digit number.
read -p "Enter 2 digit number between 10 to 99 :  " a;
read -p "Enter 2 digit number between 10 to 99 :  " b;
read -p "Enter 2 digit number between 10 to 99 :  " c;

#Perform Arithmmetic Operations
op1=$((a+b*c));
op2=$((a%b+c));
op3=$((c+a/b));
op4=$((a*b+c));

#Check Maximum and Minimum number among 3 numbers
for i in {$a,$b,$c}
do

	if [ $i -lt $min ]
	then
		min=$i;
	elif [ $i -gt $max ]
	then
		max=$i;
	fi
done


echo "The Minimum of 3 numbers is:$min";
echo "The Maximum of 3 numbers is:$max";

