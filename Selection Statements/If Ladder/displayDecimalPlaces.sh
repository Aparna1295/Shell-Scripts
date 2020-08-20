#!/bin/bash -x
count=0;
	while [ $count -lt 3 ];
do
	read -p "Enter any number between 1,10,100,1000,10000,100000,1000000,10000000:  " number;
	sleep 2;
	if [ $number -eq 1 ]
	then
		echo "The User entered number is equivalent to Unit Place";
	elif [ $number -eq 10 ]
	then
		echo "The User entered number is equivalent to Tenth Place";
	elif [ $number -eq 100 ]
   then
      echo "The User entered number is equivalent to  Hundred Place";
   elif [ $number -eq 1000 ]
   then
      echo "The User entered number is equivalent to Thousand Place";
	elif [ $number -eq 10000 ]
   then
      echo "The User entered number is equivalent to Ten Thousand Place";
   elif [ $number -eq 100000 ]
   then
      echo "The User entered number is equivalent to One Hundred Thousand Place";
	elif [ $number -eq 1000000 ]
   then
      echo "The User entered number is equivalent to One Million Place";
	elif [ $number -eq 10000000 ]
   then
      echo "The User entered number is equivalent to Ten Million Place";
   else
		echo "Invalid Number";
	fi
	count=$((count + 1));
done;
	
