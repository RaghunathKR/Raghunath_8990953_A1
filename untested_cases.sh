test_case_6_missing_input() {
  result=$(calculate_volume 78 332 2>&1)

  if [[ "$result" == *"Error: Missing input"* ]]; then
    echo "PASS: Detected missing argument"
  else
    echo "FAIL: Did not detect missing argument"
  fi
}

test_case_7_All_same_Input() {
  result=$(calculate_volume 78 78 78)
  expected=474552
  if [[ "$result" -eq "$expected" ]]; then
    echo "PASS: Volume of 78x78x78 is 474552 as expected $expected"
  else
    echo "FAIL: Expected 474552, got $result"
  fi
}

test_case_8_largenumbers() {
  result=$(calculate_volume 1000 2000 3000)
  expected=6000000000
  if [[ "$result" -eq "$expected" ]]; then
    echo "PASS: Volume of 1000x2000x3000 is 6000000000 as expected $expected"
  else
    echo "FAIL: Expected 6000000000, got $result"
  fi
}

test_case_9_invalid_input2() {

  result=$(calculate_volume R A G 2>&1)

  if [[ "$result" == *"Error: All dimensions must be integers."* ]]; then
    echo "PASS: Detected invalid input"
  else
    echo "FAIL: Did not detect invalid input"
  fi
}

test_case_10_2negativeturns_positiveResult() {
  result=$(calculate_volume -2 -3 4)
  expected=24
  if [[ "$result" -eq "$expected" ]]; then
    echo "PASS: Volume of -2x-3x4 is 24 as expected $expected"
  else
    echo "FAIL: Expected 24, got $result"
  fi
}

test_case_6_missing_input
test_case_7_All_same_Input
test_case_8_largenumbers
test_case_9_invalid_input2
test_case_10_2negativeturns_positiveResult

