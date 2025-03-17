#!/bin/bash
echo "Enter the filename to set owner permission:"
read file
chmod 700 "$file"
echo "Owner has full permission on $file,others have none."
