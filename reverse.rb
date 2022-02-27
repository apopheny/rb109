# Reverse an array without using the .reverse method

# Input: an array
# Output: an array which is the input array reversed

# Data structures: an array

# Algorithm
# Initialize a method, reverse, which has one parameter, arr
# Initialize a local variable, result, to an empty array
# duplicate arr so as not to mutate
# Pop the values from duplicated arr and push them to result
# return result

def reverse(arr)
  result = []
  working_arr = arr.map { |element| element.dup }
  until working_arr.empty?
    result << working_arr.pop
  end
  result
end

a = %w(taco pinata pirana meme)
p reverse(a) == a.reverse
p reverse([20, 10, -80, 10, 10, 15, 35]) == [20, 10, -80, 10, 10, 15, 35].reverse
