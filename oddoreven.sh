#!/bin/bash
echo "Enter the number"
read num
if [ $((num % 2)) -eq 0 ]; then
   echo "The $num is Even"
else
   echo "The $num is Odd"
fi
