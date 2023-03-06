#!/bin/bash

if [ -e file.txt ]
then
	echo "File.txt exist"
else
	echo "File.txt does not exist"
fi

if (( $1 < $2 )) 
then
	echo "$1 is lesser than $2"

elif (( $1 > $2 )) 
then
	echo "$1 is greater than $2"

fi

if [ $1 != $2 ]
then
	echo "$1 is not equal to $2"

else 	
	echo "$1 and $2 are equal"
	exit 1

fi

echo "Done"
