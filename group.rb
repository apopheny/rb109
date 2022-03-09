# Write Number in Expanded Form

# You will be given a number and you will need to return it as a string in Expanded Form. For example:

# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'

# NOTE: All numbers will be whole numbers greater than 0.

# Input: An integer
# Output: A string of integers and symbols

# Problem: Write a program which receives an integer. It should return a string containing all non-zero integers and their place values joined with " + ".

# Algorithm:
# Define a method, expanded form, with one parameter, int
# Initialize a local variable, result, to an empty array
# Convert int to a string
# Iterate through int by index position:
#   if the element index doesn't equal '0':
#     Result should be appended with a string of the element, + 1 '0' for each reamaining index position in int as a string (current element disincluded)
# Join and return result with ' + '

def expanded_form(int)
  int_string = int.to_s
  result = []
  (0...int_string.size).each do |index|
    if int_string[index] != '0'
      result << (int_string[index] + ('0' * int_string[index + 1..-1].size))
    end
  end
  result.join(' + ')
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'