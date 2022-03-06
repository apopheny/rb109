# Your goal is to write the group_and_count method, which should receive and array as unique parameter and return a hash. Empty or nil input must return nil instead of a hash. This hash returned must contain as keys the unique values of the array, and as values the counting of each value.

# Example usage:

# input = [1,1,2,2,2,3]

# group_and_count(input)# == {1=>2, 2=>3, 3=>1}

# The following methods were disabled:

# Array#count
# Array#length

# Input: an array of integers
# Output: a hash with integer k=>v pairs

# Problem: Write a program which receives an array of integers and returns a hash with the integers as keys and the number of times they occur as values

# Algorithm:
# Define a method, group_and_count, with one parameter, arr
# return nil if arr is empty
# Initialize a variable, result, to a Hash
# Iterate through arr
#   If result has the element as a key, its value should be incremented by one
#   Otherwise it should be one
# Return result

def group_and_count(arr)
  return arr[0] if arr.empty?
  result = Hash.new
  arr.each do |int|
    result.has_key?(int) ? result[int] += 1 : result[int] = 1
  end
  result
end

p group_and_count([0,1,1,0]) == {0=>2, 1=>2}