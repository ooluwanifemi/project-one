#!/bin/bash


echo "Hello there! I hope you are having a wonderfull day out there"
sleep 4
echo
echo
echo
echo "I am a script meant to collect your personal information"
echo "Do you agree to provide your information(Y/N)"
read agree






if [ $agree = Y ] || [ $agree = y ] || [ $agree = yes ] || [ $agree = YES ]

then

	echo "What is your FirstName?"
	read name
	echo "What state do you state in?"
	read state
	echo "How old are you?"
	read age
	echo "Thanks for the information"
else
	echo "See you later"
	exit 
fi

echo "
Name : $name
State : $state
Age: $age " >> information

echo >> information

