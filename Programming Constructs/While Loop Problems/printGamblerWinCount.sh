#! /bin/bash -x
read -p "Enter initial amount to be place at bet: " amount ;
read -p "Enter final amount you wish to reach: " goal;
read -p "Enter number of bets you want to take part: " noOfTrial;

#VARIABLE DECLARATION
bet=0;
win=0;
lose=0;
cash=0;
count=0;

# CALCULATE BET COUNT AND WIN COUNT
for (( index=0;index<noOfTrial; index++ ))
do
	cash=$amount;
	bet=$((bet+1));
	echo "Pass Number: $bet";
	while [[ $cash -ge 0 && $cash -lt $goal ]]
	do
		randomnumber=$((RANDOM%2));
		if [ $randomnumber -eq 0 ]
		then
			((cash++));
		else
			((cash--));
		fi
	done

	if [ $cash -eq $goal ]
	then
		((win++));
		echo "Win";
	else
		((lose++));
		echo "Lose";
	fi
	echo "cash" $cash " in pass" $(($count+1));
	((count++));
done

#PRINT WIN AND LOSE AND CASH
echo "Total Number of Bets: " $bet;
echo "Total Number of Win: " $win "Times" ;
echo "Total Number of Lose:" $lose "Times";
echo "Cash at End of game: " $cash;
