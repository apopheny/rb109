# Write a method that takes an array of strings and returns an array of the same string values, except with the vowels removed.

# Problem: Write a program which takes an array of strings, and returns an array of the Same strings with all vowels removed. Strings will consist only of lowercase letters.

# Input: An Array of Strings
# Output: An Array of Strings

# Data Structures: an array

# Algorithm:
# Define a method, remove_vowels, which has one parameter, arr
# Iterate through arr transformitively
#     Break down arr strings into characters
#     If a character is a vowel, replace it with an empty string
#     Join the characters back into arr strings without the vowels
# Return the array

def remove_vowels(arr)
  arr.map do |string|
    string.chars.map { |char| char.sub(/[aeiou]/, '') }.join
  end
end

p remove_vowels(%w(green yellow black white))
