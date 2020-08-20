#!/bin/bash -x


#CONVERT INCH TO FEET
read -p "Enter the Inch: :" inch;
firstResult=$(( $inch/12 ));
echo $inch " Inch is equal to" $firstResult "Feet";

#CONVERT FEET TO INCH
read -p "Enter the feet :" feet;
secondResult=$(( $feet*12 ));
echo  $feet "feet is equal to " $secondResult "inch";

#FEET TO METER CONVERSION

meter=`printf %.3f "$(( (60*10**3 / 328) * (40*10**3/328) ))e-3"`;
echo "60feet * 40feet is equal to "$meter "meter";

#CONVERT AREA INTO ACRES

area=`printf %.3f "$(($meter * 25))e-3"`;
echo "Area of 25 plts in acres are: " $area;

