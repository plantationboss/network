#!/bin/bash
echo "Enter First number :"
read num1
echo "Enter Second number :"
read num2
echo "Enter Third number :"
read num3
if [ $num1 -ge $num2 ] && [ $num1 -ge $num3 ]; then
	echo "$num1 is the greater number"
elif [ $num2 -ge $num1 ] && [ $num2 -ge $num3 ]; then
	echo "$num2 is the greater number"
else
	echo "$num3 is the greater number"
fi
