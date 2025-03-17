#!/bin/bash
echo "Enter the filename:"
read filename
chmod 777 "$filename"
echo "Full permission (rwxrwrrwx) granted to everyone for $filename"
