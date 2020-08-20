#!/bin/bash -x

#CONSTANT DECLARATION
WIN=11;

#VARIABLE DECLARATION
hw=0;
tw=0;
flip=0;

#COUNT THE HEAD OR TAIL
while [[ $tw -lt $WIN && $hw -lt $WIN ]] 
do
	random=$((RANDOM%2));

	if [ $random -eq 1 ]
	then
		echo "Head Wins";
		((hw++));
	else
		((tw++));
		echo "Tail Wins";
	fi
done

#PRINT HEAD COUNT AND TAIL COUNT
if [ $hw -eq $WIN ]
then
	echo " Overall Head Wins";
elif [ $tw -eq $WIN ]
then
	echo "Overall Tail Wins";
fi

echo "Total Head Count:" $hw;
echo "Total Tail Count:" $tw;
