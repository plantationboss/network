#!/bin/bash
echo "Enter the filename:"
read filename
if [ ! -e "$filename" ]; then
echo "File does not Exists"
exit 1
fi
echo "File exists. Choose an Operation : "
echo "1. Copy"
echo "2. Edit"
echo "3. Rename"
echo "4. Delete"
echo "5. Exit"
read -p "enter your choice:" choice
case $choice in
1)
read -p"Enter destination filename:" dest
cp "$filename" "$dest"
echo "File copied Successsfully"
;;
2)
gedit "$filename" &
;;
3)
read -p "Enter new filename:" newname
mv "$filename" "$newname"
echo "File renamed successfully"
;;
4)
rm "$filename"
echo "File deleted Successfully"
;;
5)
echo "exiting program"
exit 0
;;
esac

