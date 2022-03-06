# Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same string with all even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased and you need to start over for each word.

# The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').
# Examples:

# weirdcase( "String" )#=> returns "StRiNg"
# weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"

# Input: a String
# Output: a string

# Problem: Write a program that receives a string, and returns that string with each even-indexed letter capitalized, and odd indexed integer lowercased. Indexing resets with each substring, and substrings are delimited by spaces. There will be no special characters in the input or output strings.

# Algorithm
# Define a method, weirdcase, with one parameter, string
# Separate string into an array of substrings and iterate transfomatively
#   separate each substring into an array of characters and iterate transfomatively
#     if index is even, upcase
#       if odd, lowercase
# Join the string with spaces and return

def weirdcase(string)
  string.split.map do |substring|
    container = ''
    (0...substring.size).each do |index|
      container << substring[index].upcase if index.even?
      container << substring[index].downcase if index.odd?
    end
    container
  end.join(' ')
end

p weirdcase('This') == 'ThIs'
p weirdcase('is') == 'Is'
p weirdcase('This is a test') == 'ThIs Is A TeSt'