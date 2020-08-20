#!/bin/bash -x
count=0;
	while [ $count -lt 3 ];
do
	read -p "Enter any number between 0 to 6:  " number;
	sleep 2;
	if [ $number -eq 0 ]
	then
		echo "The User entered number is equivalent to Sunday";
	elif [ $number -eq 1 ]
	then
		echo "The User entered number is equivalent to Monday";
	elif [ $number -eq 2 ]
   then
      echo "The User entered number is equivalent to  Tuesday";
   elif [ $number -eq 3 ]
   then
      echo "The User entered number is equivalent to Wednesday";
	elif [ $number -eq 4 ]
   then
      echo "The User entered number is equivalent to Thursday";
   elif [ $number -eq 5 ]
   then
      echo "The User entered number is equivalent to Friday";
	elif [ $number -eq 6 ]
   then
      echo "The User entered number is equivalent to Saturday";
   else
		echo "Invalid Number";
	fi
	count=$((count + 1));
done;
