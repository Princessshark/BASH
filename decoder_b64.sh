#!/bin/bash

# Prompt the user for input
read -p "Enter the base64-encoded string: " userInput

# Decode the base64-encoded string
decodedString=$(echo "$userInput" | base64 -d)

# Echo the decoded string
echo "Decoded string: $decodedString"
