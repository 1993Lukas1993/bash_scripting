#!/bin/bash

MYVAR=1

while [ $MYVAR -le 10 ]
do
	echo $MYVAR
	MYVAR=$(( $MYVAR +1 ))
	sleep 1
done
