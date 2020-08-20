#!/bin/bash -x 

#VARIABLES DECLARATION
flag=0;
isPrime=0;

#TAKE NUMBER FROM USER
read -p "Enter two numbers to print prime numbers between those numbers:" number1 number2;


#PRINT PRIME NUMBERS BETWEEN RANGE
echo "Prime numbers from $number1 to $number2";
for (( index=$number1; $index<=$number2; index++))
do
	for (( index1=$index; $index1<=$index/2; index1++))
	do
		if [ $(($index%$index1)) -eq 0 ]
		then
			flag=1;
		fi
	done

	if [ $flag -eq $isPrime ]
	then 
		echo "$index";
	fi
done
