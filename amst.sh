#!/bin/bash
echo -n "Enter a Number : "
read num
sum=0
temp=$num
n=${#num}
while [ $temp -gt 0 ]
do
	digit=$((temp % 10))
	sum=$((sum + digit ** n))
	temp=$(( temp / 10 ))
done
if [ $sum -eq $num ]; then
    echo "$num is an Amstrong Number : "
else
    echo "$num is not an Amstrong Number : "
fi
