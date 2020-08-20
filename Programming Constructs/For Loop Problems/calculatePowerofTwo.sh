#!/bin/bash -x

#VARIABLE DECLARATION
power=1;

#TAKE NUMBER FROM USER
read -p "Enter any number to calculate power of 2: " number;

#CALCULATE POWER OF TWO AND PRINT TABLE UPTO N
for (( index=1; index<=$number; index++ ))
do
	power=$(($power*2))
	echo "2 * "$index" =" $power;

done

echo "The power of 2 till $number: " $power;

