#!/bin/bash
echo -n "Enter process name to count : "
read process
count=$( ps aux | grep -w "$process" | grep -v "grep" | wc -l)
echo "No:of Running instance of  '$process' $count"
