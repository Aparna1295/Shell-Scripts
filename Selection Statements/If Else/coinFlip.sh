#! /bin/bash -x
count=1

#Limit Iteration to 5
while [ $count -lt 5 ];
do
	#Take random input between 0 and 1
	flip=$((RANDOM%2));

	#Check the random value  and print result either HEAD or TAIL
	if [ $flip -eq 0 ]
	then
		echo "HEAD";
	else
		echo "TAIL";
	fi
	#Increament count as per Iteration completion
	count=$((count + 1));

done

