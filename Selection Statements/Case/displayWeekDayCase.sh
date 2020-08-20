#!/bin/bash -x
count=0;
	while [ $count -lt 3 ];
do
	read -p "Enter any number between 0 to 6:  " number;
	sleep 2;

	case $number in
		0)
			echo "The User entered number is equivalent to Sunday";;
		1)
			echo "The User entered number is equivalent to Monday";;
		2)
      	echo "The User entered number is equivalent to  Tuesday";;
   	3)
      	echo "The User entered number is equivalent to Wednesday";;
		4)
      	echo "The User entered number is equivalent to Thursday";;
   	5)
      	echo "The User entered number is equivalent to Friday";;
	 	6)
      	echo "The User entered number is equivalent to Saturday";;
   	*)
			echo "Invalid Number";;
	esac
	count=$((count + 1));

done;
