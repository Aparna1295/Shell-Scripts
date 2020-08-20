#!/bin/bash -x

#FUNCTION TO CONVERT DEGREE TO FEHRENHIET
function celtofer()
{
	temp=$1;
	degF=$(( $(($temp*9/5))+32 ));
	echo $degF;
}
#FUNCTION  TO CONVERT FEHRENHIET TO DEGREE
function fertocel()
{
	temp=$1;
	degC=$(($(($temp-32))/$((5/9))));
	echo $degC;
}

#TAKE CHOICE FROM USER
echo "****************Degree COnversions*********************";
echo " 1 Convert Degree to Fehrenhiet";
echo " 2 Conert Fehrenhiet to degree ";
read -p "Please press 1 or 2 as per your choice: "  choice;
read -p "Enter a number to be convert: " number;

case $choice in
	1)
		res="$( celtofer $(($number)))";
		echo "Degree converted into Fehrenheit: " $res"F";
		;;
	2)
		res="$( celtofer $(($number)))";
		echo "Degree converted into Celcius: "$res"C";
		;;
	*)
		echo "You entered wrong choice";
		;;

esac
