# Video 4 second problem

# Write a function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false

# For example:
# if str1 is 'rkqodlw' and str2 is 'world' return true
# if str1 is 'cedewaraaossoqqyt' and st2 is 'codewars' return true
# if str1 is 'katas' and str2 is 'steak' return false

# Only lower case letters will be used with no punctuation and digits

# Problem: Write a program which receives two strings. If the letters in string1 can be used to make up string 2, return true, else return false. Letters can only be used once.

# Input: two strings
# Output: a Boolean

# Data structure: two arrays of string characters

# Algorithm:

# Define a method, scramble, which has two parameters, str1 and str2
# Initialize a local variable to the characters of str2, str2_arr
# Iterate through str2_arr
#   If str1 contains at least the same count for the elements of str2_arr, and this is true for all elements of str2_arr, return true, else return false


def scramble(str1, str2)
  str2.chars.all? do |char|
    str1.count(char) >= str2.count(char)
  end
end


p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
