#!/bin/bash -x

echo "Arithmatic Computation Problem"

#UC_1_Take three inputs from user
function input
{
read -p "Enter First Number" A
read -p "Enter Second Number" B
read -p "Enter Third Number" C
}


function firstEquation()
{
	input
	firstEquationResult=$(( $A + $B * $C ))
}
firstEquation

function secondEquation()
{
	input
	secondEquationResult=$(( $A * $B + $C ))
}
secondEquation
