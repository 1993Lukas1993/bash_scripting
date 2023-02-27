#!/bin/bash

COMMAND=htop

if command -v $COMMAND
then
    echo "$COMMAND is available, lets run it..."
else
    echo "$COMMAND is not available, installing it..."
    sudo apt update && sudo apt install -y $COMMAND
fi

$COMMAND

