# Given an array of strings made only from lowercase letters, return an array of all characters that show up in all strings within the given array (including duplicates). For example, if a character occurs 3 times in all strings but not 4 times, you need to include that character 3 times in the final answer.


# Input: an array of strings
# Output: an array of single-letter strings

# Problem:
# Write a program that takes an array of strings and returns an array of characters that show up in all the strings, the number of times that character shows up in all strings, repeated if it shows up multiple times in all strings

# Algorithm
# - Define a method, common_chars, which takes an Array as a parameter, array
# - Initialize a variable, result, to an empty array
# - Initialize a variable which is a duplicate of the first array element, working_word
# - take the first letter of the first word and count the number of times it occurs in each string, storing to an array
#   - if all results are > 0, push that letter to result the minimum number of times it occurs
#   - delete that letter from working word

#   return result


def common_chars(array)
  result = []
  working_word = array[0].dup

  loop do
    count_arr = []
    break if working_word.empty?

    array.each do |words|
      count_arr << words.count(working_word[0])
    end

    count_arr.min.times do
      result << working_word[0]
    end

    working_word.delete!(working_word[0])
  end

  result
end


p common_chars(%w(bella label roller)) == %w(e l l)
p common_chars(%w(cool lock cook)) == %w(c o)
p common_chars(%w(hello goodbye booya random)) == %w(o)
p common_chars(%w(aabbaaaa ccdddddd eeffee ggrrrrr yyyzzz)) == []


