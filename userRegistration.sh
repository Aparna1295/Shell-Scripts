#!/bin/bash -x
#shopt -s extglob
echo ".......................................Welcome to User Registration Validation................................";

#FUNCTION TO VALIDATE FIRST NAME
function checkFirstName(){
	local pattern="^[A-Z]{1}[a-z]{2,}$";
	read -p "Enter your First name:" name;
	if [[ $name =~ $pattern ]]
	then
		echo "$name is valid First Name";
	else
		echo "$name is Invalid First Name....Please enter First letter in Uppercase followed by smaller case characters.";
	fi
}

#FUNCTION TO VALIDATE LAST NAME
function checkLastName(){
	local pattern="^[A-Z]{1}[a-z]{2,}$";
	read -p "Enter your Last name:" lname;

	if [[ $lname =~ $pattern ]]
	then
		echo "$lname is valid Last Name.";
	else
		echo "$lname is Invalid Last Name....Please enter First letter in capital followed by smallercase characters";
	fi
}

#FUNCTION TO VALIDATE EMAIL ADDRESS
function checkEmail(){
	local	pattern="^[a-z]{3,}[-\+\.]?[a-zA-Z0-9]*\@[0-9]*(gmail|abc|yahoo|bl)*\.?(co|com|net)?\.*(in|au|com)*$";

	read -p "Enter your email address:" email;
	if [[ $email =~ $pattern ]]
	then
		echo "$email is Valid email address";
	else
		echo "$email is Invalid email address....Please enter Email Id with @ and . symbol in it";
	fi
}

#FUNCTION TO VALIDATE PRE-DEFINED MOBILE FORMAT
function checkMobileNo(){
	local pattern="^[0-9]{2}[ ][0-9]{10}";
	read -p "Enter your mobile number:" mobileNumber;
	if [[ $mobileNumber =~ $pattern ]]
	then
		echo "Mobile Number is Valid";
	else
		echo "Mobile Number is Invalid....Please enter 10 digit mobile number with Country code";
	fi
}

#FUNCTION TO CHECK PASSWORD CONSISTS OF MINIMUM 8 CHARACTERS WITH ATLEAST ONE CAPITAL LETTER & ONE NUMERIC DIGIT

function checkPassword(){
	local pattern1="^[a-zA-Z0-9]{8,}";
   local pattern2="([A-Z])+([a-z0-9]*)([A-Z])*([a-z0-9]*)$";
	local pattern3="^([A-Za-z0-9]*[0-9]+[A-Za-z0-9]*[A-Z])|([A-Za-z0-9]*[A-Z]+[A-Za-z0-9]*[0-9])|([A-Za-z0-9]*[a-z])$";
   read -p "Enter your password:" password;
   if [[ $password =~ $pattern1 ]]
   then
		echo "Password is 8 characters long";
		if [[ $password =~ $pattern2 ]]
		then
			echo "Password is having at least 1 Capital Letter";
			if [[ $password =~ $pattern3 ]]
			then
				echo "Password is having at least 1 numeric digit";
			else
				echo "Please enter Password with at least 1 numeric digit";
   		fi
		else
      	echo "Please Enter Password with at least 1 capital letter";
		fi
	else
		echo "Please Enter 8 characters in Password";
	fi
}

checkFirstName;
checkLastName;
checkEmail;
checkMobileNo;
checkPassword;


