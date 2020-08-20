#!/bin/bash -x

#VARIABLES DECLARATION
maximum=0;
secondMaximum=0;
minimum=999;
secondMinimum=999;

#GENERATE RANDOM 3 DIGIT NUMBER AND STORE INTO ARRAY 
for (( index=0; index<10; index++ ))
do
	a[index]=$((RANDOM%900+100));
done
echo "3 Digit 10 random numbers are:";
echo "${a[@]}";

#FIND MAXIMUM AND SECOND MAXIMUM
for (( index1=0; index1<10; index1++ ))
do
	if [ $((a[index1])) -gt $maximum ]
	then
		secondMaximum=$maximum;
		maximum=$((a[index1]));
	elif [ $((a[index1])) -gt $secondMaximum -a $((a[index1])) -lt $maximum ]
	then
		secondMaximum=$((a[index1]));
	fi
done

#FIND MINIMUM AND SECOND MINIMUM
for (( index2=0; index2<10; index2++ ))
do
	if [ $((a[index2])) -lt $minimum ]
	then
		secondMinimum=$minimum;
		minimum=$((a[index2]));
	elif [ $((a[index2])) -lt $secondMinimum -a $((a[index2])) -gt $minimum ]
	then
		secondMinimum=$((a[index2]));
	fi
done

#PRINT MAXIMUM AND SECONDMAXIMUM AND MINIMUM AND SECONDMINIMUM
echo "Largest number in array: " $maximum;
echo "Second Largest number in an array: "$secondMaximum;
echo "Smallest Number in an array: " $minimum;
echo "Second Smallest Number in an array: " $secondMinimum;
