# You are going to be given an array of Integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to thesum of the integers to the right of N. If there is no index that would make this happen, return -1

# Problem: Write a program that takes an Array of integers and returns the index position of an element for which the elements to the left of it sum to the same number as those to the right

# Input: An Array of integers
# Output: an Integer representing an Index position of that Array

# Data structures: The given array

# Algorithm
# Define a method, find_even_index, with one parameter, arr
# Iterate through arr by index
# if arr[0...index].sum == arr[index + 1..-1] return index
# else return -1

def find_even_index(arr)
  arr.each_index do |index|
    return index if arr[0...index].sum == arr[(index + 1)..-1].sum
  end
  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
