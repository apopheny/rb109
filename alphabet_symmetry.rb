# Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.

# Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. For example,

# solve(["abode","ABc","xyzD"]) = [4, 3, 1]

# See test cases for more examples.

# Input will consist of alphabet characters, both uppercase and lowercase. No spaces.

# Good luck!

# Problem: Write a program that receives an array of strings, and returns an Array of integers counting the number of letters that occur in their alphabetical position, starting from a and irrespective of case.

# Input: An array of strings
# Output: an array of integers the same size as the input array

# Data structures: An incremented counter, an array of the alphabet

# Algorithm:
# Define a method, solve, that receives one parameter, string_arr
# Initialize a local variable to an array with each element being the alphabet in position
# Initialize a local variable, result, to an empty array
# Iterate through string_arr by element
#   Initialize a local variable, counter, to 0
#   Iterate through string_arr's characters
#     If the index position of the character and the index position of the alphabet character at that position are the same (irrespective of case), increment counter by 1
#   push counter to result
# return result

def solve(string_arr)
  alphabet = ('a'..'z').to_a
  result = []
  string_arr.each do |string|
    counter = 0
    (0...string.size).each do |string_index|
      counter += 1 if string[string_index].downcase == alphabet[string_index]
    end
    result << counter
  end
  result
end


p solve(["abode","ABc","xyzD"]) == [4, 3, 1]
