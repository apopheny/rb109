# The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.
# Examples

# "din"      =>  "((("
# "recede"   =>  "()()()"
# "Success"  =>  ")())())"
# "(( @"     =>  "))((" 

# Input: String
# Output: String

# Problem: Write a program that receives a string and returns a string in which the characters of the input string have been replaced by parentheses: open parentheses for letters which appear once in the input string, and close parentheses for those which appear more than once. Characters may be any valid string.

# Algorithm
# Define a method, duplicate_encode, which has one parameter, str_input
# Reassign str_input to an array of its characters and iterate through it transformatively
#   Return a "(" if an element appears once in str_input
#   Return  a ")" if it appears more than once
# Join the return values back into a string and return

def duplicate_encode(str_input)
  str_input.downcase.chars.map do |char|
    str_input.downcase.count(char) > 1 ? ')' : '('
  end.join
end

p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("