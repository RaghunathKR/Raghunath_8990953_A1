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

test_volume_calculation
