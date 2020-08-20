#!/bin/bash -x

#VARIABLE DECLARATION
start=0;
end=100;

#LOGIC TO FIND MAGIC NUMBER
read -p "Please take any random number between 1-100 and I will guess the number:" number;
middle=$(($(($start+$end-1))/2));
echo "Is $middle your number???";

echo "Please help me to find that number by selecting following options:";
read -p "Press(G)if the number is greater than printed one otherwise Press (S) or Press (Y)if it is the number" choice;


while [[ $start<=$end && $middle -ne $number ]]
do
	case $choice in
		"G")
			start=$(($middle+1))
			;;

		"S")
			end=$(($middle-1))
			;;

		"Y")
			echo "Your magic number is" $middle;
			;;
	esac
	if [ $middle -eq $number ]
	then
		echo $middle " is your number but you enter wrong choice.... ";
	fi
	if [ $start -le $end ]
	then
		middle=$(($(($start+$end))/2));
		echo $middle " is your number ";
		read -p " Press (Greater) if the number is greater than printed one and Press (L)if it is smaller or Press (Y) if I guess correctly :" choice;
	fi
done
