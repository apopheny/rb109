# Write a method that takes two arguments: The first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print 'Fizz'; if a number is divisible by 5, print 'Buzz'; and if it is divisible by both 3 & 5, print FizzBuzz

# Problem: Write a program that receives two Integer arguments. The first is the starting number, and the last is the ending number. Iterate through that range. Ouput the number to the console, unless the number is divisible by 3 or 5. If it is divisible by 3, ouput 'Fizz'; if it is divisible by 5, ouput 'Buzz'; and if it is divisible by both 3 & 5, ouput 'FizzBuzz'

# Input: two Integers
# Output: Integers and strings

# Data Structures: Iteration method that analyzes the number being iterated

# Algorithm
# Define a method, fizzbuzz, which has two parameters, int1 & int2
# int1 and int2 comprising the starting and endpoints for a range
# For each number in that range, check if number is divisible by 3 & 5
#   if so, ouput 'Fizzbuzz'
#     if not, check if number is divisible by 3 or 5
#       if so, output 'Fizz' or 'Buzz', respectively
#   else ouput number

def fizzbuzz(int1 = 1, int2)
  result = []
  (int1..int2).each do |int|
    if (int % 5 == 0) && (int % 3 == 0)
      result << 'FizzBuzz'
    elsif int % 5 == 0
      result << 'Buzz'
    elsif int % 3 == 0
      result << 'Fizz'
    else
      result << int
    end
  end
  p result.join(', ')
end

fizzbuzz(1, 15)
