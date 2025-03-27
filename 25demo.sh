#!/bin/bash

while true
do
    echo "1. Search for a movie name in a file"
    echo "2. Count occurrences of a movie name"
    echo "3. Find movies starting or ending with a specific word"
    echo "4. Display only the first match"
    echo "5. Count total movies (words) in the file"
    echo "6. Replace a movie name in the file"
    echo "7. Exit"
    read -p "Choose an option: " opt
    case $opt in

        1) echo "Enter the filename:"
           read filename
           echo "Enter the movie name:"
           read movie
           grep -n "$movie" "$filename"
           ;;
        
        2) echo "Enter the filename:"
           read filename
           echo "Enter the movie name:"
           read movie
           grep -c "$movie" "$filename"
           ;;         
        
        3) echo "Enter the filename:"
           read filename
           echo "Enter the movie:"
           read movie
           echo "Movies starting with '$movie':"
           grep "^$movie" "$filename"
           echo "Movies ending with '$movie':"
           grep "$movie$" "$filename"
           ;;
        
        4) echo "Enter the filename:"
           read filename
           echo "Enter the movie name:"
           read movie
           grep -m 1 "$movie" "$filename"
           ;;
        
        5) echo "Enter the filename:"
           read filename
           if [[ -f "$filename" ]]; then
               wc -w "$filename"
           else
               echo "File not found or cannot be read!"
           fi
           ;;
        
        6) echo "Enter the filename:"
           read filename
           echo "Enter the movie to replace:"
           read oldname
           echo "Enter the new name of that movie:"
           read newname
           # To handle special characters in movie names (like /)
           sed -i "s|$oldname|$newname|g" "$filename"
           echo "Replaced '$oldname' with '$newname'"
           ;;
        
        7) echo "Exiting...🎬️"
           exit 0
           ;;
        
        *)
           echo "Invalid choice! Please select a valid option."
           ;;
    esac
done

