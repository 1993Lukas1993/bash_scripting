#!/bin/bash

# Looping over a numeric range
echo "1 to 10:"

for i in {100..0}
do
	echo " $i "
	sleep 1
done

# Looping over command line arguments
echo "Arguments:"

for a in "$@"
do
	echo " $a "
done

# While loop contiues while error.log is not empty
while (( $(stat --format "%s" error.log) > 0 ))
do
	echo "error.log not empty, clear to continue..."
	sleep 3
done

# Until loop: loop until app folder appears
until [ -d app ]
do
	echo "Please create 'app' folder to proceed"
	sleep 5
done


