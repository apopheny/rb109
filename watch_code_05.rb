# Write a method to find the longest common prefix string amongst an array of strings

# If there is no common prefix, return an empty string

# Example 1:

# common_prefix(%w(flower flow flight)) == 'fl'
# common_prefix(%w(dog racecar car)) == ''
# common_prefix(%w(interspecies interstellar interstate)) == 'inters'
# common_prefix(%w(throne dungeon)) == ''
# common_prefix(%w(throne throne)) = 'throne'

# Problem: Write a program that takes an array of strings and analyzes its elements for the longest contiguous substring with which all elements begin, and return that substring

# Input: an array of strings
# Output: a string

# Data structures: an empty string to which results will be appended

# Algorithm:

# Define a method, common_prefix, with one parameter that takes an array of strings, string_arr
# Initialize a variable, result, to an empty string
# Iterate through all elements of the string elements by index position
#   If the letter at index position 0 of the first element occurs in all elements, append it to result
#   Continue through all index positions of the strings until the letter at a given index position does not occur in all elements
# return result

def common_prefix(string_arr)
  result = ''
  counter = 0

  loop do
    if string_arr.all? { |string| string[counter] == string_arr[0][counter] }
      result << string_arr[0][counter]
    else
      break
    end
    
    counter += 1
    break if counter == string_arr.map { |string| string.size }.max
  end

  result
end



p common_prefix(%w(flower flow flight)) == 'fl'
p common_prefix(%w(dog racecar car)) == ''
p common_prefix(%w(interspecies interstellar interstate)) == 'inters'
p common_prefix(%w(throne dungeon)) == ''
p common_prefix(%w(throne throne)) == 'throne'