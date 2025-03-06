#!/bin/bash
echo "Enter the filename:"
if [ -e "$filename" ]; then
echo "File Exists"
if [ -r "$filename" ]; then
echo "File is Readable"
else
echo "File is not readable"
fi
if [ -w "$filename" ]; then
echo "File is writable"
else
echo "File is not writable"
fi
if [ -r "$filename " ] && [ -w "$filename" ]; then
echo "File is both Radable and Writable"
else
echo "File is not both readable and writable"
fi
else 
echo "file does not exist"
fi
