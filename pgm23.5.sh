#!/bin/bash
echo "Enter the filename : "
read filename
grep "[0-9]\+$" "$filename" 
echo "😐️"



#         OUTPUT
#Enter the filename : 
#Emp_Data.txt
#4000, 65200, 60000
#6000, 97800, 90000
#7000, 114100, 105000
#500, 7800, 7150

