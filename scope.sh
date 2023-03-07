#!/bin/bash

func1 () 
{
	#declare sets the variable scope to local within this function
	#declare COSTCENTER="Toronto"
	COSTCENTER="Toronto"
	echo "This is func1, the cost center is:" $COSTCENTER
}


func2 ()
{
	func1
	echo $COSTCENTER
}
func2

