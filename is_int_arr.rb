# Write a function with the signature shown below:

# def is_int_array(arr)
#   true
# end

#   returns true / True if every element in an array is an integer or a float with no decimals.
#   returns true / True if array is empty.
#   returns false / False for every other input.

# Input: An array
# Output: A boolean

# Write a program that returns true only if its input is an array consisting entirely of integers or floats with no decimal value, or an empty array

# Algorithm
# Define a method, is_int_array, with one parameter, arr
# Return false if arr's class is not an array
# Return true if arr is an empty array
# Return false if the class of all of arr's elements is not either integer or float
# Return whether or not all of arr's elements are equal to their integer value

def is_int_array(arr)
  return false if arr.class != Array
  return true if arr.empty?
  return false unless arr.all? { |ele| ele.class == Float || ele.class == Integer}
  arr.all? { |ele| ele == ele.to_i }
end

p is_int_array([]) == true # "Input: []"
p is_int_array([1, 2, 3, 4]) == true # "Input: [1, 2, 3, 4]"
p is_int_array([-11, -12, -13, -14]) === true # "Input: [-11, -12, -13, -14]"
p is_int_array([1.0, 2.0, 3.0]) === true # "Input: [1.0, 2.0, 3.0]"
p is_int_array([1, 2, nil]) == false # "Input: [1,2, nil]"
p is_int_array(nil) == false # "Input: nil"
p is_int_array("") == false # "Input: ''"
p is_int_array([nil]) == false # "Input: [nil]"
p is_int_array([1.0, 2.0, 3.0001]) == false # "Input: [1.0, 2.0, 3.0001]"
p is_int_array(["-1"]) == false # "Input: ['-1']"