#!/bin/bash




#Script is meant to gather information from users and use the info to create a file for the user


#Greetings
echo "Hi There! I hope you are doing well today."
sleep 3
echo
echo
echo


#Informing the user what the script does
echo "I am a script that collects personal information from you."
echo "Please make sure to answer the questions as accurate as possible."
sleep 5
echo
echo
echo



#Asking the user for their name
echo "What is your name?"
read name
echo
echo
echo
echo "What state do you live in?"
read state
echo
echo
echo
echo "How old are you?"
read lkm
echo
echo
echo
echo "How tall are you in ft?"
read het
echo 
echo
echo
echo "What is you weight in lbs"
read weight

echo
echo
echo



echo "
Name: $name
State: $state
Age: $lkm
Height: $het
Weight: $weight" > $name


#Use the information collected
#echo "Name: $name" > $name
#echo "State: $state" >> $name
#echo "Age: $lkm" >> $name
#echo "Height: $het" >> $name
#echo "Weight: $weight" >> $name




echo
echo
echo "We have create a file called $name which contains all your informtion"
echo "Thank You"







