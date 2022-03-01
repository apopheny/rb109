# Repeat Yourself

# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

# Example:

# repeat('Hello', 3)

# Output:

# Hello
# Hello
# Hello

# Problem: Write a program which receives two arguments: A String and an Integer > 0. It shoult output the string Integer times.

# Input: A String and an Integer
# Ouput: A string printed out to the console Integer times

# Data Structures: a loop

# Algorithm: 
# - Define a method, repeat, which has two parameters, string and integer
# - integer times, output string

def repeat(string, integer)
  integer.times { puts string }
end


repeat('Hello', 3)