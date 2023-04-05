#!/bin/bash



#OWNER: OLUWANIFEMI
#DATE:4TH APRIL 2023
#DESCRIPTION: SETUP A WEB SERVER


#Check if the user running this i ubuntu user an if not exit

person=`whoami`

if [ $person = ubuntu ]
then
	echo "Hello there Mr/Mrs Ubuntu! Its nice to meet you."
	echo 
	echo "I am a script that helps to setup a webserver"
	echo "Please give me a moment to check your internet connection."
	echo 
#Checking the server for internet connection.
	if ping -c 5 www.google.com > /dev/null
	then
		echo "Your internet connection looks great"
                sudo apt-get update > /dev/null
		echo "Your machine is up to date"
	else
		echo "Please check your internet connection and try again"
		exit

	fi	


#check if apache is installed 
	if dpkg -s apache2 > /dev/null
	then
		echo "Apache is already installed"
	else
		echo "Apache is not installed. Installing now......"
		sudo apt-get install apache2 -y 
	fi
  	


else
	echo "Sorry you are not authorized to run this script"
	echo "Please reach out to you admin department for the right access"
	echo "Have a wonderfull day see you later"
	exit
fi


#While the user answer is yes keeping asking them to input more information
sleep 3
echo
echo "Please I will like to get some personal information from you"
echo "Do you agree to provide your information Y/N"
read agremnt


while [ $agremnt = Y ] || [ $agremnt = YES ] || [ $agremnt = y ] || [ $agremnt = yes ]
do
	echo Thanks for willing to provide your information
	ans=N
			while [ $ans = N ] || [ $ans = n ] || [ $ans = no ] || [ $ans = NO ]
			do
				echo "What is your first name?"
				read firstname
				echo "What state do you reside in?"
				read state
				echo "How old are you?"
				read age
				echo "How tall are you?"
				read height
				echo "What do you weigh in LBS"
				read weight
				echo 
				echo
				echo "Thanks for providing your information"
				echo "
				Name: $firstname
				State: $state
				Age: $age
				Height: $height
				Weight: $weight"
				echo 
				echo Please Check the information you have provided above if it is correct
				echo Does the information look correct to you Y/N
				read ans
			done

sudo chmod 777 /var/www/html/index.html
echo "
<h1> Name: $firstname </h1>
<h1> State: $state </h1>
<h1> Age: $age </h1>
<h1> Height: $height </h1>
<h1> Weight: $weight </h1> " >> /var/www/html/index.html

echo "


     " >> /var/www/html/index.html
echo 
echo
echo Processing..... 
sleep 2
echo "I have saved your personal information"
echo "Would you like to provide another extra persons information Y/N?"
read agremnt

done

echo Thanks for your time. See you later!



