# Your task is to Reverse and Combine Words. It's not too difficult, but there are some things you have to consider...
# So what to do?

# Input: String containing different "words" separated by spaces

# 1. More than one word? Reverse each word and combine first with second, third with fourth and so on...
#    (odd number of words => last one stays alone, but has to be reversed too)
# 2. Start it again until there's only one word without spaces
# 3. Return your result...

# Some easy examples:

# Input:  "abc def"
# Output: "cbafed"

# Input:  "abc def ghi 123"
# Output: "defabc123ghi"

# Input:  "abc def gh34 434ff 55_eri 123 343"
# # Output: "43hgff434cbafed343ire_55321"

# Input: a string
# Output: a string

# Problem:
# Write a program which takes a string input. If that string input has substrings, which are delimited by spaces, reverse each substring and join them by adjacency, two at a time. If there is a remnant, it shall be reversed but not joined at a given step. Step through the substrings in this fashion until there is one contiguous substring.

# Algorithm
# Define a method, reverse_and_combine_text, with one parameter, string_input
# If the string split at spaces has only one element, return string_input
# Initialize a result array to an array of the substrings
# Iterate through the result array two at a time
#   If an iteration's start index through its end index has a size of 1, the result array's last position is this section reversed
#   Otherwise, reassign the start index to the start index reversed plus the end index reversed, and delete the end index
#   Step through until the result array has a size of 1
# return the result array's only index position

def reverse_and_combine_text(string_input)
  result = string_input.split

  loop do
    result.map!(&:reverse)
    result.each_index do |index|
      if index.even?
        if result[index + 1] != nil
          result[index] = result[index] + result[index + 1]
        else
          result[index] = result[index].reverse
        end
      else
        result[index] = false
      end
    end
    result.delete(false)
    break if result.size == 1
  end

  result[0]
end

# def reverse_join(arr)
#   arr[0] = arr[0].reverse + arr[1].reverse
#   arr[1] = false
# end


p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("abc def") == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi" # cbafed ihglkj => defabcjklghi
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"
