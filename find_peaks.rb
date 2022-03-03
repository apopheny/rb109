# In this kata, you will write a function that returns the positions and the values of the "peaks" (or local maxima) of a numeric array.
# For example, the array arr = [0, 1, 2, 5, 1, 0] has a peak at position 3 with a value of 5 (since arr[3] equals 5).
# The output will be returned as an object with two properties: pos and peaks. Both of these properties should be arrays. If there is no peak in the given array, then the output should be {pos: [], peaks: []}.
# Example: pickPeaks([3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3]) should return {pos: [3, 7], peaks: [6, 3]} (or equivalent in other languages)
# All input arrays will be valid integer arrays (although it could still be empty), so you won't need to validate the input.
# The first and last elements of the array will not be considered as peaks (in the context of a mathematical function, we don't know what is after and before and therefore, we don't know if it is a peak or not).
# Also, beware of plateaus !!! [1, 2, 2, 2, 1] has a peak while [1, 2, 2, 2, 3] and [1, 2, 2, 2, 2] do not. In case of a plateau-peak, please only return the position and value of the beginning of the plateau. For example: pickPeaks([1, 2, 2, 2, 1]) returns {pos: [1], peaks: [2]} (or equivalent in other languages)
# Have fun!

# Problem: Write a program that receives an array of Integers and returns a Hash with two key value pairs. The first pair will be "pos" => [Array], which will contain the index positions of any peaks that may occur within the input Array, and the second will be 'peaks' => [Array] which will contain the size of any peaks. A peak is defined as a number which is greater than the prior greatest value to itself, and contains no greater values after it unless a value less than it occurs.

# Input: An array of Integers
# Output: A hash with two k => v pairs, with Array values and string keys

# Data structures: a Hash with predefined keys and values which are empty arrays

# Algorithm:
# Define a method method, pick_peaks, which has one parrameter, arr
# Initialize a local variable, result, to a Hash: {'pos' => [], 'peaks' => []}
# Initialize a local variable, peak , to an Integer, 0
# Iterate through arr by index
#   if arr element >= peak
#     peak = element
#   else 
#     result[position] << index - 1
#     result[peaks] << element
#     peak = 0
# Return result

def is_peak?(arr, index)
  return false if index == 0 || index + 1 == arr.size
  return false if arr[index..-1].all? { |ele| ele == arr[index]}
  arr[index] > arr[index - 1] && arr[index] >= arr[index + 1]
end

def pick_peaks(arr)
  result = {'pos' => [], 'peaks' => []}
  (0...arr.size).each do |index|
    if is_peak?(arr, index)
      result['pos'] << index
      result['peaks'] << arr[index]
    end
  end
  result
end


p pick_peaks([1,2,3,6,4,1,2,3,2,1]) == {"pos"=>[3,7], "peaks"=>[6,3]}
p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,3]) == {"pos"=>[3,7], "peaks"=>[6,3]}
p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,2,2,1]) == {"pos"=>[3,7,10], "peaks"=>[6,3,2]}
p pick_peaks([2,1,3,1,2,2,2,2,1]) == {"pos"=>[2,4], "peaks"=>[3,2]}
p pick_peaks([2,1,3,1,2,2,2,2]) == {"pos"=>[2], "peaks"=>[3]}
p pick_peaks([2,2,2,1,3,1,2,2,2,2]) == {'pos'=>[4], 'peaks'=>[3]}
