#!/bin/bash -x

isleap="false";

read -p "Enter the Year for which you want to check if the year is Leap Year : " year;
#checks whether User entered 4 digit Year
if [[ $year -ge 1000 && $year -le 9999 ]];
then
	echo "This is a 4 digit Year entered by an User";
	#Check if year is not divisible by 4
	if [ $(($year % 4)) -ne 0 ] ;
	then
		isleap="false";
	#check if year is divisble by 400
	elif [ $(($year % 400)) -eq 0 ];
	then
    	isleap="true";
	#check if year id divisble by 100
	elif [ $(($year % 100)) -eq 0 ];
	then
		isleap="false";
	else
	#All above conditions are false then year is Leap
     	isleap="true";
	fi
	#check the status of flag and print whether the year is leap year or not
	if [ "$isleap" == "true" ];
	then
   	echo "The Year $year is a Leap year";
	else
   	echo "The Year $year is not a Leap year";
	fi

else
	#Display Message to User to enter Year in 4 digit 
	echo "User entered Year greater than 4 digit...Please enter year in 4 digits only";
fi

