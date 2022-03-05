# Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

# Examples:

# * 'abc' =>  ['ab', 'c_']
# * 'abcdef' => ['ab', 'cd', 'ef']

# Input: A string
# Output: An array of strings

# Problem: Write a program which takes a string and returns two character substrings of that string as elements of an array. If the string has an odd number of characters, the last element of the array should be a paired substring the second character of which '_'.

# Algorithm:
# Define a method, solution, which has one parameter, string
# Initialize a variable, result, to an empty array
# Iterate through the string two at a time
#   if this is an odd size, add '_' to the return
# push this return to result
# return result

def solution(input_string)
  result = []
  (0...input_string.size).each do |index|
    next if index.odd?
    input_string[index, 2].size.odd? ? result << input_string[index] + '_' : result << input_string[index, 2]
  end
  result
end

p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []