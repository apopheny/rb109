# Given an array of integers, find the maximal size of the subarray of 
# consecutive integers whose sum is a prime number.
# For example [1, 3, 1, 0, 1, 6, 6] == 5,
# because the subarray [3, 1, 0, 1, 6] is the longest consecutive subarray
# whose numbers, when added up, equal to a prime number, 11.

# p max_prime_sub([1, 3, 1, 0, 1, 6, 6]) == 5
# p max_prime_sub([]) == 0
# p max_prime_sub([7, 13, 9, 1, 3]) == 3
# p max_prime_sub([1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0]) == 13
# p max_prime_sub([100, 100, 100, 50, 3, 1, 1, 1]) == 5

# Input: An array of Integers
# Output: An integer

# Problem: Write a program which takes an array of integers and returns the size, as an Integer, of the largest contiguous subset of that array which is a prime number. If the array has no elements, return 0.

# Algorithm:
# Define a method, max_prime_sub, which has one parameter, arr
# Initialize a local variable, result, to 0
# For each subset of arr (from a given index position, grab the end of the rest of the array and work backwards until a single element is grabbed, then move onto the next index position):
# check if the number is prime
#   If so:
#     If the size of that subset is greater than result, reassign result to that size
#   Else:
#     Next iteration
# Return result

# Write a helper method which determines if a number is prime, return t/f
#   Iterate from 2 through integer - 1: If a number can evenly divide into the integer, return false
# Return true

def max_prime_sub(arr)
  result = 0
  (0...arr.size).each do |index|
    counter = -1
    loop do
      if is_prime?(arr[index..counter].sum)
        result = arr[index..counter].size if arr[index..counter].size > result
      end
      counter -= 1
      break if index - counter > arr.size
    end
  end
  result
end

def is_prime?(num)
 (2...num).each do |int|
   return false if num % int == 0
 end
 true
end

p max_prime_sub([1, 3, 1, 0, 1, 6, 6]) == 6 # despite problem example, largest prime subset is [3, 1, 0, 1, 6, 6] which is 17
p max_prime_sub([]) == 0 # return 0 if empty
p max_prime_sub([7, 13, 9, 1, 3]) == 3 #[9, 1, 3].sum == 13
p max_prime_sub([1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0]) == 13 #entire array sums to 11 and has a size of 13
p max_prime_sub([100, 100, 100, 50, 3, 1, 1, 1]) == 5 # [100, 100, 100, 50, 3].sum == 353
