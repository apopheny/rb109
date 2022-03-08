# Sort the given array of strings in alphabetical order, case insensitive. For example:

# ["Hello", "there", "I'm", "fine"]  -->  ["fine", "Hello", "I'm", "there"]
# ["C", "d", "a", "B"])              -->  ["a", "B", "C", "d"]

# Input: An array of strings
# Output: an array of strings

# Problem: Write a program which receives an array of strings, and returns that array sorted alphabetically irrespective of case

# Algorithm
# Define a method, sortme, with one parameter, str_arr
# Iterate through str_arr and return the results sorted using the same case

def sortme(str_arr)
  str_arr.sort { |str1, str2| str1.downcase <=> str2.downcase }
end

p sortme(["Hello", "there", "I'm", "fine"]) == ["fine", "Hello", "I'm", "there"]
p sortme(["C", "d", "a", "B"]) == ["a", "B", "C", "d"]
p sortme(["CodeWars"]) == ["CodeWars"]