#!/bin/sh

# Script is used with Kargos for Plasma Panel to display values as simple text.

# Get the average temp
result=$(cat /sys/class/thermal/thermal_zone0/temp | awk '{printf "%d", $1/1000}')

# Output the result
echo "TEMP $result°C | size=11"
