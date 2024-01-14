#!/bin/bash
# Specify the filename
filename="resourcetracker.txt"

# Delete the existing file if it exists
if [ -e "$filename" ]; then
    rm "$filename"
fi

# Get current date and time
timestamp=$(date +"%Y%m%d_%H%M%S")

# Create a filename with the timestamp
filename="resourcetracker_$timestamp.txt"

# Append the output of each command to the file
az vm list --output table > "$filename"
echo "vm list" >> "$filename"
az vm list --query '[].name' --output json | jq -r '.[]' >> "$filename"
