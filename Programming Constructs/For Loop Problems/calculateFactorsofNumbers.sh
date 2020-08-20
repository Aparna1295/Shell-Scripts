#!/bin/bash -x

#TAKE NUMBER FROM USER
read -p "Enter any number to calculate prime factors: " number;
echo "Prime Factors of $number are:";
#FIND PRIME FACTOR OF NUMBER AND PRINT THAT FACTORS
for (( index=2; $index<=$number; index++ ))
do
	if [ $(($number%$index)) -eq 0 ]
	then
		echo "$index";
		number=$(($number/$index));
	fi

	if [ $(($number%$index)) -eq 0 ]
	then
	index=$(($index-1));
	fi

done
