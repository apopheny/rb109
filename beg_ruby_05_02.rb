# Write a method that takes a string and returns a boolean indicating whether or not this string has a balanced set of parentheses.

# Problem: Write a program which takes an input string, and returns true or false depending on whether or not each open parentheses has 1 closing parentheses, and vice versa, in order.

# Input: a String
# Output: a Boolean

# Data Structures: The input string

# Algorithm
# Define a method, balencer, which has one parameter, str
# Break str up into an Array of its characters
# Iterate through this array by index
#   If an element at an index position is '(', if the string from that index position to its end does not contain at least 1 ')', return false
# Return true

def balancer(str)
  (0...str.size).each do |index|
    if str[index] == "("
      return false if str[(index + 1)..-1].count(')') < 1
    end
  end
  true
end

p balancer('hi') == true
p balancer('(hi') == false
p balancer("(hi)") == true
p balancer(")hi(") == false
p balancer("(()) )(") == false

# The count method in the video is better as ")" would be valid per this method, but probably invalid in most applications 
