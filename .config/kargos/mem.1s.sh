#!/bin/sh

# Script is used with Kargos for Plasma Panel to display values as simple text.

# Get the memory
# result=$(free -m | awk 'NR==2{printf "%s/%sMB", $3,$2,$3*100/$2 }')
# result=$(free --giga | awk 'NR==2{printf "%s/%sGB (%.2f%%)\n", $3,$2,$3*100/$2 }')
# result=$(free --giga | awk 'NR==2{printf "%sGB", $3 }')
result=$(free -m | awk 'NR==2{printf "%sMB", $3}')

# Output the result
echo "MEM $result | size=11"
