# Task

# Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.
# Example

# For n = 152, the output should be 52;

# For n = 1001, the output should be 101.
# Input/Output

#     [input] integer n

#     Constraints: 10 ≤ n ≤ 1000000.

#     [output] an integer

# Input: an integer
# Output: an integer

# Problem: Write a program that receives an integer and returns the largest integer that can be obtained from deleting one number from the input

# Algorithm:
# Define a method, delete_digit, which has one parameter, int_input
# Initialize a variable, result, to 0
# Convert int_input to a string
# Iterate through it one place at a time, removing that place
#   Reassign result to its integer value if that value is greater
# Return result

def delete_digit(int_input)
  string = int_input.to_s
  result = 0
  (0...int_input.to_s.size).each do |index|
    result = string.sub(string[index], '').to_i if string.sub(string[index], '').to_i > result
  end
  result
end


p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1