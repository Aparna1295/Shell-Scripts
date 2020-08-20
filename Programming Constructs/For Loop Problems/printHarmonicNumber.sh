#!/bin/bash -x

#VARIABLE DECLARATION
result=1;

#TAKE NUMBER FROM USER
read -p  "Enter any number to calculate Harmonic Number :" number;

#PRINT HARMONIC NUMBER
for (( index=1; index<=$number; index++))
do

	firstNumber=`printf %.3f "$(( 1*10**3/$index ))e-3"`;
	#firstNumber=1/$index;
	result=$result+$firstNumber;
	echo " $index Harmonic Number:1/$index ";
	echo " Result after adding $index number : $result";
	
done

#PRINT ADDITION OF N'TH HARMONIC NUMBER
echo "Addition upto" 1/$number " harmonic number is:" $result;
