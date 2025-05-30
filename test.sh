#!/bin/bash

source main.sh

# Main test
test_volume_calculation() {
  result=$(calculate_volume 2 3 4)
  expected=24
  if [[ "$result" -eq "$expected" ]]; then
    echo "PASS: Volume of 2x3x4 is 24 as expected $expected"
  else
    echo "FAIL: Expected 24, got $result"
  fi
}

test_case_2_invalid_input() {
  result=$(calculate_volume 5.5 2 3 2>&1)

  if [[ "$result" == *"Error: All dimensions must be integers."* ]]; then
    echo "PASS: Detected invalid input"
  else
    echo "FAIL: Did not detect invalid input"
  fi
}

test_volume_calculation
test_case_2_invalid_input
