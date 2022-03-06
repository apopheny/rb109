# You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.
# Examples

# [2, 4, 0, 100, 4, 11, 2602, 36]
# Should return: 11 (the only odd number)

# [160, 3, 1719, 19, 11, 13, -21]
# Should return: 160 (the only even number)


# Input: an array of integers
# Output an integer

# Problem: Write a program which receives an array of integers of at least 3 in size. All of the integers will all be odd or even excepting one. Return the outlier.

# Algorithm
# Define a method, find_outlier, with one parameter, arr
# Initialize a variable, odd, to 0
# Initialize a variable, even, to 0
# Check the first 3 elements for odd or even, and increment their respective elements by 1
# If odd is greater, iterate through arr and return that which is even
# same for odd

def find_outlier(arr)
  odd = 0
  even = 0
  arr.each do |ele|
    odd += 1 if ele.odd?
    even += 1 if ele.even?
  end

  if odd > even
    arr.each do |ele|
      return ele if ele.even?
    end
  else
    arr.each do |ele|
      return ele if ele.odd?
    end
  end
  
end

p find_outlier([2, 4, 0, 100, 4, 11, 2602, 36]) == 11
p find_outlier([160, 3, 1719, 19, 11, 13, -21]) == 160
p find_outlier([0, 1, 2]) == 1
p find_outlier([1, 2, 3]) == 2