#!/bin/bash -x
#Intialize number of Iterations
count=0;
#Assigning random signle digit number

while [ $count -lt 5 ];

do	
	number=$((RANDOM%10));
	
	case $number in 
			0)
				echo "The Number is Zero";;
		 	1)
				echo "The number is One";;
			2)
   			echo "The Number is Two";;
			3)
  				echo "The number is Three";;
      	4)
				echo "The Number is Four";;
   		5)
      		echo "The number is Five";;
			6)
      		echo "The number is Six";;
   		7)
      		echo "The Number is Seven";;
   		8)
      		echo "The number is Eight";;
   		9)
      		echo "The Number is Nine";;
   		*)
				echo "Invalid Number";;
	esac
	count=$((count + 1));
	sleep 2;
done;
