#!/bin/bash -x

#VARIABLES DECLARATION
flag=0;
isPrime=0;

#TAKE NUMBER FROM USER
read -p "Enter any number to check whether it is prime or not:" number;

#CHECK NUMBER IS PRIME OR NOT
for (( index=2; $index<=$number/2; index++))
do
	if [ $(($number%$index)) -eq 0 ]
	then
		flag=1;
	fi
done

#PRINT IF PRIME
if [ $flag -eq $isPrime ]
then 
	echo $number "is a prime number";
else
	echo $number "is not a prime number";
fi
