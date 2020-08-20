#!/bin/bash -x

#VARIABLES DECLARATION
flag=0;

#FUNCTION TO CHECK NUMBER IS PRIME OR NOT
function isprimenumber()
{
	firstnumber=$1;
	for (( index=2; index<=$firstnumber/2; index++ ))
	do
		if [ $(($firstnumber%$index)) -eq 0 ]
		then
			flag=1;
		else
			flag=0;
		fi
	done
	if [ $flag -eq 0 ]
	then
		echo $flag;
	else
		echo $flag;
	fi
}

#FUNCTION TO CHECK NUMBER IS PALINDROME OR NOT
function ispallindrome()
{
	secondNumber=$1;
	temp=$secondNumber;
	result=0;
	while [ $secondNumber -gt 0 ]
	do
		reminder=$(($secondNumber%10));
		result=$(( $(($result*10)) + $reminder));
		secondNumber=$(($secondNumber/10));
	done
	echo $result;
}

#TAKE NUMBER FROM USER CHECK PRIME AND PALINDROME
read -p "Enter any number to check if it is Prime and/or Pallindrome:" number;
	if [ $( isprimenumber $(($number)) ) -eq 0 ]
	then
		echo $number "is a prime number";
		if [ $( ispallindrome $(($number))) -eq $number ]
		then
			pallindrome="$( ispallindrome $(($number)))";
			echo "Reverse of $number is $pallindrome.";
			echo "Reverse of number $pallindrome is same as $number.Therefore, $number is Pallindrome.";
			if [ $( isprimenumber $(($palindrome))) -eq 0 ]
			then
				echo  $palindrome "Palindrome of number is also Prime Number.";
			fi
		else
			pallindrome="$( ispallindrome $(($number)))";
			echo "Reverse of $number is $pallindrome.";
  			echo "Reverse of number $pallindrome is not same as $number.Therefore, $number is not Pallindrome.";
			if [ $( isprimenumber $(($pallindrome))) -eq 0 ]
			then
				echo $pallindrome " is not Palindrome.However, the $pallindrome is a Prime Number.";
			else
				echo $palindrome " is neither Pallindrome nor Prime Number.";
			fi
		fi
	else
		echo "The Number is not Prime Number and hence Pallindrome is not checked.";
	fi
