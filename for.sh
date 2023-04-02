#!/bin/bash


echo Which list do you want to use
read ans


for fruit in $(cat $ans)
do
	if [ $fruit = Ijapa ]
	then
		echo "I hate $fruit"
	else
		echo "I love $fruit"
	fi
done
