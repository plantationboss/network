#!/bin/bash
echo "Enter the word to highlight : "
read word
echo "Enter the filename : "
read filename
grep --color=auto "$word" "$filename"





#Enter the word to highlight : 
#Jack
#Enter the filename : 
#Emp_Data.txt
#21, Jack Sheaperd, 40000, 7200, 14000, 5200,
#21, Jack Sheaperd, 60000, 10800, 21000, 7800,
#21, Jack sunil, 70000, 12600, 24500, 9100,

