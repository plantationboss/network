#!/bin/bash
echo -n "Enter a number:"
read num
echo "Multi[lication table for $num:"
for i in {1..10}
do
echo "$num x $i = $((num * i))"
done
