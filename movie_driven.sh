#!/bin/bash

while true
do
echo "1. Search for a movie name in a file"
echo "2. Count occurrences of a movie name"
echo "3. Find movies starting or ending with a specific word"
echo "4. Display only the first match"
echo "5. Count total movies (words) in the file"
echo "6. Replace a movie name in the file"
read -p "Choose an option :" opt
case $opt in


       1) echo "enter the filename:"
          read filename
          echo " enter the movie name:"
          read movie
          grep -n "$movie" "$filename"
          ;;
          
       2) echo "enter the filename:"
	read filename
	echo "enter the movie name:"
	read movie
	grep -c "$movie" "$filename"
	;;         
       3) echo "Enter the filename"
          read filename
          echo "enter the movie"
          read movie
          grep "^$movie" "$filename"
          grep "$movie$" "$filename"
          ;;
       4) echo "Enter the filenam"
          read filename
          echo "enter the movie name:"
          read movie
          grep -m 1 "$movie" "$filename"
          ;;
          
       5) echo "Enter the filename"
          read filename
          
          wc -w "$filename"
          ;;
          
       6) echo "Enter the filename"
          read filename
          echo "Enter the movie to replace"
          read oldname
          echo "Enter the new name of that movie"
          read newname
          sed -i "s/$oldname/$newname/g" "$filename"
          echo "Replaced" $oldname "with" $newname
          ;;
       7) echo "Exiting...🎬️"
          exit 0
          ;;
          
       *)
          echo "Invalid choice ! please select a valid option"
          ;;
     esac
 done
          

