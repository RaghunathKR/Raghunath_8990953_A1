#!/bin/bash

# Function to check if input is a valid integer (supports negative values)
is_integer() {
  [[ "$1" =~ ^-?[0-9]+$ ]]
}
# Calculates volume of a rectangular prism
calculate_volume() {
  local height=$1
  local width=$2
  local length=$3

   # Check if all three arguments are provided
  if [[ -z "$height" || -z "$width" || -z "$length" ]]; then
    echo "Error: Missing input. Please provide height, width, and length." >&2
    exit 1
  fi
# Validate all inputs
  if ! is_integer "$height" || ! is_integer "$width" || ! is_integer "$length"; then
    echo "Error: All dimensions must be integers." >&2
    exit 1
  fi

  echo $((height * width * length))
}

calculate_volume "5" "5" "5"