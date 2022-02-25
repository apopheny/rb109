# The maximum sub subarray problem consists in finding the maximum sum of a contiguous subsequence in an array of integers

# maxSequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6 # [4, -1, 2, 1]

# Easy case is when the array is made up of only positive numbers and the maximum sum is the sum of the whole array. If the array is made up of only negative numbers, return 0 instead

# Empty array is considered to have a 0 greatests sum. Note that the empty array is also a valid subarray.

# maxSequence([]) == 0
# maxSequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6 # [4, -1, 2, 1]
# maxSequence([11]) == 11
# maxSequence([-32]) == 0
# maxSequence([-2, 1 -7, 4, -10, 2, 1, 5, 4]) == 12

# Input: An array, either empty or of Integers which may be negative or non-negative
# Output: An Integer representing to largest possible return of any contiguous sequence of integers withing the input array

# Problem: Write a program that returns the largest possible sum from summing the elements sequentially from an input array. If all numbers in the input array are negative, or the input array is empty, return 0.

# Algorithm
# - Initialize a method, `maxSequence`, which takes an array of integers as a parameter, `arr`
# - If `arr` is empty or all elements of `arr` are < 0, return 0
# - Initialize a local variable to an empty array, `result`

# LOGIC: nested loops
# - sum the entire array and store to `result`
# - sum the entire array starting from the second element and store to result
# - continue in this fashion until the starting element is the last index position
# - repeat this but ignore the last index position
# - continue in this fashion until the last index position is the first index position

    # - Initialize a local variable, `starting_index`, to 0
    # Outer loop
    # - Initialize a local variable, 'subarr_size', to size of arr[starting_index] - starting_index

    #   Inner loop
    #   - sum the array from starting_index to subarr_size and store to result
    #   - increment subarr_size by - 1
    #   - break if subarr_size == 0

    # increment starting_index by 1
    # break if starting_index == arr.size

# return the largest number from result


def maxSequence(arr)
  return 0 if arr.empty? || arr.all? { |int| int < 0 }

  result = []
  starting_index = 0

  loop do
    subarr_size = arr.size - starting_index

    loop do
      result << arr[starting_index, subarr_size].sum
      subarr_size -= 1
      break if subarr_size == 0
    end

    starting_index += 1
    break if starting_index == arr.size
  end
  
  result.max
end



p maxSequence([]) == 0
p maxSequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6 # [4, -1, 2, 1]
p maxSequence([11]) == 11
p maxSequence([-32]) == 0
p maxSequence([-2, 1 -7, 4, -10, 2, 1, 5, 4]) == 12