#!/bin/bash -x

count=0;
footinInch=12;
footinMeter=328;
while [ $count -lt 5 ];

do	
	read -p "Enter length for Unit Conversion : " length;
	echo "***********Unit ConverSion Options****************";
	echo " 1.Feet to Inch
			 2.Feet to Meter
			 3.Inch to Feet
			 4.Meter to Feet";

	read -p "Enter your choices for conversion: " choice;
	
	case $choice in

			1)
				conversion=$((length *  footinInch));
				echo "The Conversion of $length from Feet to Inch : $conversion";;
			2)
				conversion=`printf %.3f "$(( $length*10**3/$footinMeter ))e-3"`;
				echo "The Conversion of $length from Feet to Meter : $conversion";;
			3)
				conversion=$((length /  footinInch));
            			echo "The Conversion of $length from Inch to Feet : $conversion";;
	     		4)
	         		conversion=$((length *  footinMeter));
	         		echo "The Conversion of $length from Meter to Feet : $conversion";;
   			*)
				echo "Invalid Choice";;
	esac
	count=$((count + 1));
	sleep 2;
done;
