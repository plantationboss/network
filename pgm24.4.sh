#!/bin/bash
echo "Enter the filename :"
read filename
sort "$filename" | uniq -d


#Enter the filename :
#Emp_Data.txt
#3, ajin, 500000, 550, 1750, 650,
#500, 7800, 7150

