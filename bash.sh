#!/bin/bash






#Do you want to create a file yes or no

echo "Do you want to create a file (Y/N)"
read ans

if [ $ans = john] || [ $ans = eve ]
	then
		echo "what do you want the file name to be"
		read filename
		touch $filename 

       else
		echo "Good Bye. See you another Time"
fi		





#if the answer is yes
#ask the user which name the want for the file
#if answer is anything apart from yes tell them goodbye and exit




