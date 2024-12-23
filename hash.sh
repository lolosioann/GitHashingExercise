#!/bin/bash

# Read a number from the arguments
number=$1

# Check if the input is a valid four-digit number
if [[ ! "$number" =~ ^[0-9]{4}$ ]]; then
    echo "Error: Input must be a four-digit number."
    exit 1
fi

# Convert the number to a string and hash it using sha256sum
hash=$(echo -n "$number" | sha256sum | awk '{print $1}')

# Output the result
echo "$hash"


