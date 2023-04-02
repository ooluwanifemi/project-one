#!/bin/bash



echo "Tell me a state in thet United State and I will give you the Capital"
read state




case "$state" in 
	"Texas")
		echo "The capital is Austin"
		;;
	"Alabama")
		echo "The capital is Montegomery"
		;;
	"Delaware")
		echo "The capital is Dover"
		;;
	"Utah")
		echo "The capital is Salt Lake city"
		;;
	"New Jersey")
		echo "The Capital is Trenton"
		;;
	*)
		echo "Invalid State"
		;;
esac	
