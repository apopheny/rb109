# Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of digits.

# For example:

# greatestProduct("123834539327238239583") // should return 3240

# The input string always has more than five digits.

# Adapted from Project Euler.

# Input: A string integer
# Output: An integer

# Problem: Write a program that receives a string integer and returns the greatest possible product of a 5 character contiguous substring of its input.

# Algorithm:
# Define a method, greatest_product, with one parameter, string_int
# Initialize a local variable, result, to 0
# Iterate through string_int 5 character strings at a time, multiplying those characters together
#   Reassign result to the return if it is greater than its current assignment
# Return result

def greatest_product(string_int)
  result = 0
  (0..(string_int.size - 5)).each do |index|
    result = multiply_strings(string_int[index, 5]) if multiply_strings(string_int[index, 5]) > result
  end
  result
end

def multiply_strings(five_string)
  five_string.chars.map!(&:to_i).inject(:*)
end

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0
