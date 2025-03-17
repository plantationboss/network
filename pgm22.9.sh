#!/bin/bash
echo "Enter the filename:"
read filename
chmod 750 "$filename"
echo "Owner has full permissios; group can read and execute $filename"
