#!/usr/bin/env bash

# Script is used with Kargos for Plasma Panel to display values as simple text.

# Get all the workspaces
wspd=$(wmctrl -d)
wsps=$(echo "$wspd" | wc -l)

# Get active workspace
wsp_name=$(echo "$wspd" | grep '*' | sed 's/.* //g')
wsp_index=$(echo "$wspd" | grep '*' | grep -Eo '^([0-9]+)')

# echo " ${wsp_index}/${wsps} ${wsp_name} | size=12"
echo " ${wsp_name} | size=12"
