<<<<<<< HEAD
#!/bin/bash -x

#CONSTANT DECLARATION
WIN=21;

#VARIABLE DECLARATION
side="";
flip=1;
count=0;
count1=0;

#COUNT THE HEAD OR TAIL
function checkFlip()
{
	while [[ $count -lt $WIN && $count1 -lt $WIN ]]
	do
			number=$((RANDOM%2));
			if [ $number -eq $flip ]
			then
			side+=Head;
			count=$(( count + 1 ));
         echo "---Head Wins in $count Flip---";
			else
			side+=Tail;
         count1=$(( count1 + 1 ));
			echo "Tail Wins in $count1 Flip";
			fi
	done
   echo "Overall Head wins $count times";
   echo "Overall Tail wins $count1 times";

}

echo "*****************************Welcome to Flip Coin Simulator*****************************";
checkFlip;
if [ $count -eq $count1 ]
then
   echo "There is a tie between Head and Tail for 21 times";
	while [[ $(($count - $count1 )) -ge 2 ]]
   do
      checkFlip;
   done
elif [ $count -gt $count1 ]
then
   echo "Hedas wins $count times over Tails";
else
   echo "Tails wins $count1 times over Heads";
fi
=======
#!/bin/bash -x

#CONSTANT DECLARATION
WIN=21;

#VARIABLE DECLARATION
side="";
flip=1;
count=0;
count1=0;

#COUNT THE HEAD OR TAIL
function checkFlip()
{
	while [[ $count -lt $WIN && $count1 -lt $WIN ]]
	do
			number=$((RANDOM%2));
			if [ $number -eq $flip ]
			then
			side+=Head;
			count=$(( count + 1 ));
         echo "---Head Wins in $count Flip---";
			else
			side+=Tail;
         count1=$(( count1 + 1 ));
			echo "Tail Wins in $count1 Flip";
			fi
	done
   echo "Overall Head wins $count times";
   echo "Overall Tail wins $count1 times";

}

echo "*****************************Welcome to Flip Coin Simulator*****************************";
checkFlip;
if [ $count -eq $count1 ]
then
   echo "There is a tie between Head and Tail for 21 times";
	while [[ $(($count - $count1 )) -ge 2 ]]
   do
      checkFlip;
   done
elif [ $count -gt $count1 ]
then
   echo "Hedas wins $count times over Tails";
else
   echo "Tails wins $count1 times over Heads";
fi
>>>>>>> defac23a78ab6d7fb077e6bf441a55f244adbf6a
