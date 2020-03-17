#!/bin/sh

# Script is used with Kargos for Plasma Panel to display values as simple text.

# Get the average CPU
result=$(awk -v a="$(awk '/cpu /{print $2+$4,$2+$4+$5}' /proc/stat; sleep 1)" '/cpu /{split(a,b," "); print 100*($2+$4-b[1])/($2+$4+$5-b[2])}' /proc/stat)
first=$(echo "$result" | awk -F'.' '{printf "%02d",$1}')
second=$(echo "$result" | awk -F'.' '{print substr($2,1,2)}')

# Output the result
echo " ${first}.${second}% | size=12"
