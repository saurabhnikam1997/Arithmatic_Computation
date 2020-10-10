#!/bin/bash -x

echo "Arithmatic Computation Problem"

declare -A storeResult
storeResult=(["result1"]=0 ["result2"]=0 ["result3"]=0 ["result4"]=0 )

#UC_1_Take three inputs from user
function getInputs()
{
	read -p "Enter First Number" A
	read -p "Enter Second Number" B
	read -p "Enter Third Number" C

firstEquation
secondEquation
thirdEquation
fourthEquation
}


function firstEquation()
{
	# Expression a+b*c
	firstEquationResult=$(( $A + $B * $C ))
	storeResult[result1]=$firstEquationResult
}

#firstEquation

function secondEquation()
{
	# Expression a*b+c
	secondEquationResult=$(( $A * $B + $C ))
	storeResult[result2]=$secondEquationResult
}
#secondEquation

function thirdEquation()
{
	# Expression c+a/b

	thirdEquationResult=`expr "scale=3; $C +$A / $B "|bc`
	storeResult[result3]=$thirdEquationResult
}
#thirdEquation


function fourthEquation()
{
	# Expression a%b+c
	fourthEquationResult=$(( $A % $B +$C ))
	storeResult[result4]=$fourthEquationResult
}
getInputs




