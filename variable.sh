#!/bin/bash

# Simple variable assigment
NAME="STEVE"
A=1
B=2

# Concatenation
echo "Name: $NAME"
echo "$A+$B"

# Arithmetic expansion
echo "$(( $A + $B ))"

# Command line arguments
echo "Argument count: $#"
echo "Argument values: $@"
echo "First: $1"
echo "Second: $2"

# Built-in variables
echo "Current filename: $0"
echo "Process number: $$"
echo "Time format: $TIMEFORMAT"
echo "Current path: $PWD"

exit 0
