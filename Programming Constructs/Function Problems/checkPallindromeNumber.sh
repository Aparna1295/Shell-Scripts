#!/bin/bash -x

#VARIABLES DECLARATION
flag=0;
result=0;
#FUNCTION TO CHECK NUMBER IS PALINDROME OR NOT
function ispallindrome()
{
	while [ $number -gt 0 ]
	do
		reminder=$(($number%10));
		number=$(($number/10));
		result=$(( $(($result*10)) + $reminder));
	done
	echo $result;
}

#TAKE NUMBER FROM USER CHECK IF IT IS PALINDROME
read -p "Enter a number to check if it is Pallindrome: " number;

if [ $( ispallindrome $(($number))) -eq $number ]
then
	pallindrome="$( ispallindrome $(($number)))";
	echo "Reverse of $number is $pallindrome";
	echo "Reverse of number $pallindrome is same as $number.Therefore, $number is Pallindrome"
else
	pallindrome="$( ispallindrome $(($number)))";
	echo "Reverse of $number is $pallindrome";
   echo "Reverse of number $pallindrome is not same as $number.Therefore, $number is not Pallindrome";
fi

