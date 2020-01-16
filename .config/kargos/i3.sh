#!/usr/bin/env bash

# Script is used with Kargos for Plasma Panel to display values as simple text.

# Get all the workspaces
#result=""
#while read -r obj; do
#    visible=$(echo $obj | jq '.focused')
#    name=$(echo $obj | jq '.name' | sed 's/"//g')
#
#    if [[ "$visible" == "true" ]]; then
#        result="${result} [${name}]"
#    else
#        result="${result} ${name}"
#    fi
#done < <(i3-msg -t get_workspaces | jq -c '.[]')
#echo "$result | size 11"

# Single workspace (active)
result=$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).name')
echo "WSP $result | size=11"
