# Find the longest substring in alphabetical order.

# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

# There are tests with strings up to 10 000 characters long so your code will need to be efficient.

# The input will only consist of lowercase characters and will be at least one letter long.

# If there are multiple solutions, return the one that appears first.

# Good luck :)

# Input: A string
# Output: a string

# Problem: Write a program which receives a string. It should return the longest substring in which the characters coming after each new character have a larger alphabetical value. If two substrings which meet this criteria are of the same size, the one coming first in the input string should be returned.

# Algorithm:
# Define a method, longest, with one parameter, string
# Initialize a local variable, alphabet, to an array of alphabetical characters, in order
# Initialize a local variable, result, to an empty string
# Initialize a local variable, substring, to an empty string
# Iterate through string:
#   Add the next element to substring if it has a greater or equal index position within alphabet to the last element in substring, or if substring is empty
#   If the index position is less than the last element of substring:
#     reassign result to substring if substring is larger than result
#     substring equals the current element
# Return result

def longest(string)
  alphabet = ('a'..'z').to_a
  result = ''
  substring = ''
  (0...string.size).each do |index|
    if substring.empty? || alphabet.index(string[index]) >= alphabet.index(substring[-1])
      substring << string[index] 
      result = substring if substring.size > result.size && index == string.size - 1
    else
      result = substring if substring.size > result.size
      substring = string[index]
    end
  end
  result
end

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'