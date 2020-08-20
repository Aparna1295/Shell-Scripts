#!/bin/bash -x
count=0;
	while [ $count -lt 3 ];
do
	read -p "Enter any number between 1,10,100,1000,10000,100000,1000000,10000000:  " number;
	sleep 2;
	
	case $number in 
		0)
			echo "The User entered number is equivalent to Unit Place";;
		10) 
			echo "The User entered number is equivalent to Tenth Place";;
		100)  
      	echo "The User entered number is equivalent to  Hundred Place";;
 		1000)
         echo "The User entered number is equivalent to Thousand Place";;
	 	10000)
      	echo "The User entered number is equivalent to Ten Thousand Place";;
   	100000)
   		echo "The User entered number is equivalent to One Hundred Thousand Place";;
	 	1000000)
			echo "The User entered number is equivalent to One Million Place";;
		10000000)
		echo "The User entered number is equivalent to Ten Million Place";;
   	*)
			echo "Invalid Number";;
	esac
	count=$((count + 1));
done;
	
