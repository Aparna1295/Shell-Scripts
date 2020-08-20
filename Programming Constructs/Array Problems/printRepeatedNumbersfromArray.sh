#!/bin/bash -x

#FUNCTION TO FIND REPEATED NUMBERS LIKE 22,11..
function findRepeate()
	{
		firstNumber=$1;
		remainder=$(($firstNumber%10));
		number=$(($firstNumber/10));
		if [ $remainder -eq $number ]
		then
			echo 0;
		else
			echo 1;
		fi
	}

#TAKE USER INPUT
read -p "Enter any 2 digit starting number of range to find repeated digits of numbers:" number1;
read -p "Enter any 2 digit last number of range to find repeated digits of numbers:" number2;

#FUNCTION CALL TO FIND REPEATED NUMBERS LIKE 22,11..100 AND STORE IT
for (( index=$number1; index<=$number2; index++ ))
do
	if [ $( findRepeate $index ) -eq 0 ]
	then
		array[index]=$index;
	fi
done

#PRINT THE ARRAY
echo  "Numbers having repeated digits from $number1 to $number2 are :${array[@]}";
