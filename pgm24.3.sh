#!/bin/bash
echo "Enter the filename :"
read filename
echo "Enter the word to replace :"
read oldword
echo "Enter the new word :"
read newword
sed -i "s/$oldword/$newword/g" "$filename"


#Enter the filename :
#Emp_Data.txt      
#Enter the word to replace :
#Jack
#Enter the new word :
#John

