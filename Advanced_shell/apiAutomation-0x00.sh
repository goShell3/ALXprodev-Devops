#!/bin/bash

# Set the API URL
API_URL="https://pokeapi.co/api/v2/pokemon/pikachu"

# Set output files
OUTPUT_FILE="data.json"
ERROR_FILE="errors.txt"

# Make API request
curl -s -f "$API_URL" -o "$OUTPUT_FILE"

# Check if the curl command was successful
if [ $? -ne 0 ]; then
  echo "[$(date)] Error fetching data for Pikachu from $API_URL" >> "$ERROR_FILE"
fi
