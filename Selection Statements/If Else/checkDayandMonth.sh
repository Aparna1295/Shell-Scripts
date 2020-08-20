#!/bin/bash -x

#ENTER DATE AND MONTH
echo "Enter Date in format DD and Month in Format M"
read -p "Enter the Date between 1 to 30: "  date;
read -p "Enter the Month between 1 to 12: "  month;

#CHECK DATE AND MONTH ARE VALID
if [[ $date -gt 30 || $month -gt 12 ]]
then
	echo "Please enter valid Date or Month";
#CHECK DATE IS PRESENT BETWEEN MAR 20 - JUNE 20 IF YES THEN TRUE
elif [[ $date -gt 20 && $date -le 31 && $month -eq 3 ]] ||
	[[ $date -ge 1 && $date -le 30 && $month -eq 4 ]] ||
	[[ $date -ge 1 && $date -le 31 && $month -eq 5 ]] ||
	[[ $date -ge 1 && $date -le 20 && $month -eq 6 ]]
then
	echo "True";
	echo "The User entered date is between March 20 to June 20";
else
	echo "False";
	echo "The User entered date is not in the range from March 20 to June 20";
fi
