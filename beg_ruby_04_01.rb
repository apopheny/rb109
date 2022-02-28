# # Write a method that take a string as an argument. It returns the string in reverse order without using the reverse method

# Problem: Write a program which receives a String, and returns a new String which is the input string reversed. Do not use the String#reverse method.

# Input: A string
# Output: A new string which is the input string reversed

# Data structures: An empty String which is the input string reversed

# Algorithm
# Define a method, reverse, with one parameter, str
# Initialize a local variable, result, to an empty String
# Work through the input string in reverse index order, pushing the element at each index position to result
# Return result

def reverse(str)
  result = ''
  (1..str.size).each do |index|
    result << str[-index]
  end
  result
end

p reverse('taco')
