#!/usr/local/bin/bash -x

echo ".............................. Welcome to Flip Coin Combination Simulator ............................."

#DECLARE A DICTIONARY
declare -A coinDict;

#VARIABLES DECLARATION
isFlip=0;
max=0;
temp=0;

#FUNCTION TO FIND HEAD AND TAIL COMBINATION
function findFlip()
{
	for((index=0; index<$1; index++))
	do
		side=" ";
		for((i=0; i<$2; i++))
		do
			#GENERATE RANDOM NUMBER
			randomNumber=$((RANDOM%2));
			if [ $randomNumber -eq $isFlip ]
			then
				side+=Head;
			else
				side+=Tail;
			fi
		done
		coinDict[$side]=$((${coinDict[$side]}+1));
	done
	echo "Count of all combination     :${coinDict[@]}";
}


#FUNCTION TO FIND PERCENTAGE AND ALSO FIND MAXIMUM HEAD OR TAIL WINNING COMBINANTION
function findPercentageFlip()
{
	for j in ${coinDict[@]}
	do
		coinDict[$j]=`printf %.f "$(($((${coinDict[$j]})) / $(($times*100))))"`;
		temp=${coinDict[$j]};
		if [[ $temp -ge $max ]]
		then
			max=$temp;
			key=$j;
		fi
	done
}

#CHECKING HEADS OR TAILS
read -p "Enter number of times you want to flip:" times;
read -p "Enter choice 1)Singlet 2)Doublet 3)Triplet:" coins;
findFlip $times $coins;
findPercentageFlip $times;
echo "All head and tail combination:${!coinDict[@]}";
echo "percentage of all combination:${coinDict[@]}";
echo "Max winning combination      :"${!coinDict[@]} "-" $key;

