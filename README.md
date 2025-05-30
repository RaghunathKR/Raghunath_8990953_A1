# 📦 Volume Calculator – Test Driven Development (Bash)

## 🧠 Problem Statement

Develop a Bash script to calculate the **volume of a rectangular prism** using the formula:




The goal is to use **Test Driven Development (TDD)** — writing tests first, then building the solution to make them pass.

---

## ✅ What I Did

### 📄 `main.sh`

- Defined a function `calculate_volume` to compute the volume of a prism.
- Added `is_integer` function using regex to validate that all three dimensions are integers.
- If input is invalid (e.g., decimal, symbol, missing), the script prints an error and exits.
- Called `calculate_volume "5" "5" "5"` at the end to run an example directly.

### 🧪 `test.sh`

- Imported `main.sh` using `source`.
- Wrote **10 test cases** using `if-else`.
- Each test prints either `PASS` or `FAIL` with explanation.

---

## 🔬 Test Cases Implemented

| Test No. | Description                                       | Input             | Expected Result              |
|----------|---------------------------------------------------|------------------|-------------------------------|
| 1        | Valid volume calculation                          | `2 3 4`           | `24`                          |
| 2        | Decimal input should be rejected                  | `5.5 2 3`         | Error (input validation)      |
| 3        | Negative input                                    | `-2 3 4`          | `-24`                         |
| 4        | Symbolic (non-numeric) input                      | `! 2 3`           | Error (input validation)      |
| 5        | Zero input (valid case)                           | `0 3 4`           | `0`                           |
| 6        | Only one input given                              | `78 332`          | Error (missing arguments)     |
| 7        | All inputs are zero                               | `78 78 78`        | `0`                           |
| 8        | Very large numbers                                | `1000 2000 3000`  | `6000000000`                  |
| 9        | String as one of the dimensions                   | `R A G`           | Error (input validation)      |
| 10       | Mixed negative signs resulting in positive volume | `-2 -3 4`         | `24`                          |

---

## ⚠️ Problem Faced: Decimal Input in Bash

Bash does **not support floating point arithmetic** natively. When I tried testing with a decimal value like `5.5`, it caused:

- Invalid calculations
- Errors or unexpected results

### 💡 Solution

To avoid using external tools like `bc` (which is not available in Git Bash by default), I:

- Implemented **input validation** using a regex to only accept **integers**
- Rejected any non-integer input (like `5.5`, `"abc"`, or `!`)
- Verified this behavior using test cases and captured stderr using `2>&1`

---

## 🚀 How to Run

### 1. Run the Main Script

```bash
bash main.sh

