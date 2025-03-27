#!/bin/bash
echo -n " Enter process name or pid : "
read process
if [ -2, "$process*" ]; then
echo "No input provide Exiting"
exit 1
fi
ps aux | grep -w "$process" | grep -v "grep" || echo "No such process found : $process"
