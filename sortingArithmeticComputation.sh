#!/bin/bash -x

echo "..............................Welcome to Sorting Arithmetic Computation Problem.............................."

#DECLARE A DICTIONARY
declare -A resultDict

#VARIABLE
index=0;
index1=0;
length=0;


#TAKING INPUT FROM USER
read -p "Enter first input for a :" firstInput;
read -p "Enter second input for b:" secondInput;
read -p "Enter third input for c :" thirdInput;

#COMPUTE ARITHMETIC FIRST COMPUTATION
firstResult=$((firstInput + secondInput * thirdInput));
echo "Result after 1st Computation(a+b*c):" $firstResult;

#COMPUTE ARITHMETIC SECOND COMPUTATION
secondResult=$((firstInput * secondInput + thirdInput));
echo "Result after 2nd Computation(a*b+c):" $secondResult;

#COMPUTE ARITHMETIC THIRD COMPUTATION
thirdResult=$((thirdInput + firstInput / secondInput));
echo "Result after 3rd Computation(c+a/b):" $thirdResult;

#COMPUTE ARITHMETIC FOURTH COMPUTATION
fourthResult=$((firstInput % secondInput + thirdInput));
echo "Result after 4th Computation(a%b+c):" $fourthResult;

#STORE EACH COMPUTATION RESULT INTO DICTIONARY
resultDict[result $((++index))]=$firstResult;
resultDict[result $((++index))]=$secondResult;
resultDict[result $((++index))]=$thirdResult;
resultDict[result $((++index))]=$fourthResult;

#FIND LENGTH OF DICTIONARY AND STORE VALUES INTO ARRAY
length="${#resultDict[@]}";
for ((index1=0; $index1<$length; index1++))
do
	array[index1]=${resultDict[result $((index1+1))]};
done

#FUNCTION TO SORT ARRAY IN DESCENDING ORDER
function sortDescending()
{
   length1="${#array[@]}";
   for (( i=0; i<$length1; i++ ))
   do
      for (( j=0; j<$length1-1; j++ ))
      do
         if (( $(echo "${array[j]} < ${array[j+1]}") ))
         then
            temp=${array[j]};
            array[j]=${array[j+1]};
            array[j+1]=$temp;
         fi
      done
   done
   echo "Results of Computation in descending order:"${array[@]};
}


#FUNCTION TO SORT ARRAY IN ASCENDING ORDER
function sortAscending()
{
   length1="${#array[@]}";
   for (( i=0; i<$length1; i++ ))
   do
      for (( j=0; j<$length1-1; j++ ))
      do
         if (( $(echo "${array[j]} > ${array[j+1]}") ))
         then
            temp=${array[j]};
            array[j]=${array[j+1]};
            array[j+1]=$temp;
         fi
      done
   done
   echo "Results of Computation in ascending order:"${array[@]};
}

#FUNCTION CALL TO SORT ARRAY IN DESCENDING ORDER
sortDescending ${array[@]};

#FUNCTION CALL TO SORT ARRAY IN ASCENDING ORDER
sortAscending ${array[@]};
