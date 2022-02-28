# Write a method that takes two numbers. It should print out all primes between the two numbers. Don't use Ruby's 'prime' class.

# Problem: Write a program that receives two Integers, and prints out the prime numbers between the two Integers without using Ruby's 'prime' class

# Input: Two Integers
# Output: The prime Integers printed to the console

# Data structures: A range of the two numbers, an Array of the prime values

# Algorithm:
# Define a method, find_primes, which has two parameters, int1 & int2
# Initialize a local variable to an empty array, result
# From int1 + 1 through int2 -1 check to see if the number is divisible only by 1 and itself
#   Define a method which receives a number
#   from 1 up to that number, see if the number divides evenly into the number, and store to an array if so
#   Return true if array size == 2
# If so, store to result
# print out the elements of result joined by a comma and space

def find_primes(int1, int2)
  result = []
  (int1..int2).each do |num|
    result << num if is_prime?(num)
  end
  p result.join(", ")
end

def is_prime?(int)
  result = []
  (1..int).each do |num|
    result << num if int % num == 0
  end
  result.size == 2
end

find_primes(3, 10) #=> 3, 5, 7
