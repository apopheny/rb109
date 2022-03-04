# Complete the function that takes an array of words.

# You must concatenate the nth letter from each word to construct a new word which should be returned as a string, where n is the position of the word in the list.

# For example:

# ["yoda", "best", "has"]  -->  "yes"
#   ^        ^        ^
#   n=0     n=1     n=2

# Note: Test cases contain valid input only - i.e. a string array or an empty array; and each word will have enough letters.

def nth_char(str_arr)
  result = ''
  (0...str_arr.size).each do |index|
    result << str_arr[index][index]
  end
  result
end

p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No','No']) == 'No'
p nth_char(['Chad','Morocco','India','Algeria','Botswana','Bahamas','Ecuador','Micronesia']) == 'Codewars'