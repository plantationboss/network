#!/bin/bash
echo "Enter the word to search at the end of a line : "
read word
echo "enter the filename : "
read filename
grep "$word" "$filename"


#Enter the word to search at the end of a line : 
#5200
#enter the filename : 
#Emp_Data.txt    
#21, Jack Sheaperd, 40000, 7200, 14000, 5200,
#4000, 65200, 60000

