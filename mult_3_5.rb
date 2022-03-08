# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. Additionally, if the number is negative, return 0 (for languages that do have them).

# Note: If the number is a multiple of both 3 and 5, only count it once.


# Input: An integer
# Output: An integer

# Problem: Write a program that receives an integer, and returns the sum of all integers between 1 and the integer - 1 which are multiples of 3 and 5. If a number is a multiple of both 3 and 5, it should be summed only once. If the argument to the program is negative, it should return 0.

# Algorithm
# Define a method, solution, with one parameter, int
# Return 0 if int is < 3
# For all numbers from 3 through the number minus 1
#   If the number is a multiple of 3 or 5, add it to an array
# Retain the unique values of the array
# Return the sum of the array

def solution(int)
  return 0 if int < 3
  (3...int).to_a.select do |int|
  int % 3 == 0 || int % 5 == 0
  end.uniq.sum
end

p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168
