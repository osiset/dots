#!/bin/sh

# Script is used with Kargos for Plasma Panel to display values as simple text.

# Get the result
status=$(cat /sys/class/power_supply/BAT{0,1}/status | grep -c "Discharging")

total=0
if [ "$status" -gt 0 ]; then
    bat0=$(awk '{print $1*10^-6}' /sys/class/power_supply/BAT0/power_now)
    bat1=$(awk '{print $1*10^-6}' /sys/class/power_supply/BAT1/power_now)
    total=$(echo "$bat0 + $bat1" | bc)
fi

echo "DRAIN ${total}W | size=11"

