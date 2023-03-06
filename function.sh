#!/bin/bash

greet() {
	GREETING=$1
	RECIPIENT=$2

	if [ -z "$GREETING" ]  
	then
	      GREETING="Hello"
	fi

	[ -z "$RECIPIENT" ] && RECIPIENT="World"

	echo "$GREETING, $RECIPIENT!"
	return 0
}

greet

GREETING_OUTPUT=$(greet)

echo $(greet Hi Steve)

echo $(greet Ahoj Peter)

echo $(greet Lukas)

HELLO_JANE=$(greet hello Jane)

echo "$HELLO_JANE"



