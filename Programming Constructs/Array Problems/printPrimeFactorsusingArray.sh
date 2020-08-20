#! /bin/bash -x

#VARIABLE DECLARATION
j=0;

#FUNCTION TO FIND PRIME FACTORS AND STORE IT INTO ARRAY
function primeFacotrs()
{
	array=$1;
	for (( index=2; $index<=$number; index++ ))
	do
		if [ $(($number%$index)) -eq 0 ]
		then
			array[j]=$index;
			((j++));
			number=$(($number/$index));
		fi

		if [ $(($number%$index)) -eq 0 ]
		then
			((index--));
		fi
	done
	echo "${array[@]}";
}

#TAKE NUMBER FROM USER 
read -p "Enter any number to calculate Prime factors of it: " number;

#PRINT THE ALL PRIME FACTORS
echo "Prime factors of Number are: " "$( primeFacotrs $((number)))";
