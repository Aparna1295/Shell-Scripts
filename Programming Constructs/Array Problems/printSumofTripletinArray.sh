#!/bin/bash -x

#VARIABLE DECLARATION
size=0;

#TAKE USER INPUT FOR ARRAY LIMIT
read -p "Enter size of an array:" size;
if [ $size -lt 3 ]
then
	echo "Please enter size greater than 3";
else
	# ENTER THE VALUES IN ARRAY FROM USER
	for (( index3=0; $index3<$size; index3++))
	do
		read -p  "Number"$((index3+1)): element;
		array[index3]=$(($element));
	done
	# PRINT ARRAY
	echo "The entered numbers are:${array[@]}";

fi

# CALCULATE THE TRIPLETS WHOSE SUM IS ZERO AND PRINT COUNT OF TRIPLETS
for (( index=0; $index<$size; index++ ))
do
	for (( index1=$index+1; $index1<$size; index1++ ))
	do
		for (( index2=$index1+1; $index2<$size; index2++ ))
		do
			if [ $(($((array[index]))+$((array[index1]))+$((array[index2])))) -eq 0 ]
			then
				echo "Three integers of an array having sum equal to 0 are: "
				echo "$((array[index])) $((array[index1])) $((array[index2]))";
			else
				echo "The Sum of triplet is not equal to zero or greater than zero for numbers: $((array[index])) $((array[index1])) $((array[index2]))";
			fi

		done
	done
done
