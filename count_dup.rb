# Count the number of Duplicates

# Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.
# Example

# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
# "indivisibility" -> 1 # 'i' occurs six times
# "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
# "aA11" -> 2 # 'a' and '1'
# "ABBA" -> 2 # 'A' and 'B' each occur twice

# Input: a string
# Output: an integer

# Problem: Write a program that receives a string and returns an integer, with the integer representing the number of characters in the input string which occur more than once.

# Algorithm:
# Define a method, duplicate_count, with one parameter, string
# Initialize a local variable, result, to 0
# Iterate through the unique characters of one case of the string
#   If the string, cased the same as the iteration, has more than one of the element, increment result by 1
# Return result

def duplicate_count(string)
  result = 0
  string.downcase.chars.uniq.each do |char|
    result += 1 if string.downcase.count(char) > 1
  end
  result
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2