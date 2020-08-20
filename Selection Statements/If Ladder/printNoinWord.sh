#!/bin/bash -x
#Intialize number of Iterations
count=0;
#Assigning random signle digit number

while [ $count -lt 5 ];

do
	number=$((RANDOM%10));
	
	if [ $number -eq 0 ]
	then
		echo "The Number is Zero";
	elif [ $number -eq 1 ]
	then
		echo "The number is One";
	elif [ $number -eq 2 ]
   then
      echo "The Number is Two";
   elif [ $number -eq 3 ]
   then
      echo "The number is Three";
	elif [ $number -eq 4 ]
   then
      echo "The Number is Four";
   elif [ $number -eq 5 ]
   then
      echo "The number is Five";
	elif [ $number -eq 6 ]
   then
      echo "The number is Six";
   elif [ $number -eq 7 ]
   then
      echo "The Number is Seven";
   elif [ $number -eq 8 ]
   then
      echo "The number is Eight";
   elif [ $number -eq 9 ]
   then
      echo "The Number is Nine";
   else
		echo "Invalid Number";
	fi
	count=$((count + 1));
	sleep 2;
done;
