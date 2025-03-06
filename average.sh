#!/bin/bash
echo "enter the first number "
read num1
echo "enter the second number"
read num2
echo "enter the thrid number"
read num3
echo "enter the fourth number "
read num4

sum=$((num1 + num2 + num3 + num4))
average=$((sum / 4))
product=$((num1 * num2 * num3 * num4))

echo "sum : $sum"
echo "average : $average"
echo "product: $product"

