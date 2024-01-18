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

