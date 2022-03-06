# Given two words, how many letters do you have to remove from them to make them anagrams?
#   Example
  
#       First word : c od e w ar s (4 letters removed) 
#       Second word : ha c k er r a nk (6 letters removed)
#       Result : 10
  
#   Hints
  
#       A word is an anagram of another word if they have the same letters (usually in a different order).
#       Do not worry about case. All inputs will be lowercase.

# Input: two strings
# Output: an integer

# Problem: Write a program which receives two strings and returns the total of the minumum number of characters that must be removed from each string to change them into anagrams of each other -- the result does not have to be the same string

# Algorithm
# Define a method, anagram difference, with two parameters, str1 & str2
# Initialize two local variables to the difference of the string size minus the number of letters it has in common with the other word
# Sum the two local variables and return that sum


# Define a method min_anagram with two parameters, str1, str2
# Iterate through the string as an array
# Count how many times each string has letters in common and aggregate that number
# Subtract that number from the size of the string

def anagram_difference(str1, str2)
  result1, result2 = min_anagram(str1, str2), min_anagram(str2, str1)
  result1 + result2
end

def min_anagram(str1, str2)
  result = 0
  str1.chars.uniq.each do |char|
    (result += str1.count(char) - str2.count(char)) if (str1.count(char) > str2.count(char))
  end
  result
end

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10