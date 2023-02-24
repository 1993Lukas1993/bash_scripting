#!/bin/bash

DIRECTORY=/etc

if [ -d $DIRECTORY ]
then
    echo "The directory $DIRECTORY exists."
    exit 0 
else
    echo "The directory $DIRECTORY does not exist."
    exit 199
fi

echo "The exit code for this script is $?"
echo "You did not see that statement"
echo "You wont see this one either"


