# Background
# There is a message that is circulating via public media that claims a reader can easily read a message where the inner letters of each words is scrambled, as long as the first and last letters remain the same and the word contains all the letters.

# Another example shows that it is quite difficult to read the text where all the letters are reversed rather than scrambled.

# In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will be sorted alphabetically

# Requirement
# return a string where:

#     the first and last characters remain in original place for each word
#     characters between the first and last characters must be sorted alphabetically
#     punctuation should remain at the same place as it started, for example: shan't -> sahn't

# Assumptions

#     words are seperated by single spaces
#     only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
#     special characters do not take the position of the non special characters, for example: -dcba -> -dbca
#     for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
#     ignore capitalisation

# Input: A string
# Output: A string

# Problem: Write a program that takes a string. Substrings are delimited by spaces only. The first and last characters should stay the same, and special characters should remain in their positions. All other letters should be alphabetized within the substring. All characters will be lowercase

# Data Structures: An array of substrings. A holding array of substrings which meet the criteria for alphabetization.

# Algorithm
# Define a method, scramble_words, with one parameter, input_string
# Return input_string if input_string size <= 3
# Initialize a local variable, substring_arr, to the space-delimited substrings of input_string
# Iterate through substring_arr
#   select all the letters
#     alphetize all but the first and last characters and rejoin the string
#   if a character is not alphabetical insert it at its original index position
# join and return substring_arr

# Helper method: determine if a character is alphabetical
#   have a range of all alphabetical characters and check if it is included

def scramble_words(input_string)
  return input_string if input_string.size <= 3
  substring_arr = input_string.split
  substring_arr.map do |substring|
    letters = substring.chars.select { |char| is_letter?(char) }
    letters = letters[0] + letters[1..-2].sort.join + letters[-1]
    special_chars = substring.chars.select { |char| is_letter?(char) == false }
    special_chars.each do |special|
      letters.insert(substring.chars.index(special), special)
    end
    substring.size == 1 ? substring : letters
  end.join(' ')
  
end

def is_letter?(char)
  ('a'..'z').include?(char.downcase)
end


    p scramble_words('professionals') == 'paefilnoorsss' # 'The first and last letters of a word should reamin in place with the inner letters sorted')
    p scramble_words('i') == 'i' # 'Must handle single charater words')
    p scramble_words('') == '' # 'Must handle empty strings')
    p scramble_words('me') == 'me' # 'Must handle 2 charater words')
    p scramble_words('you') == 'you' # 'Must handle 3 charater words')
    p scramble_words('card-carrying') == 'caac-dinrrryg' # 'Only spaces separate words and punctuation should remain at the same place as it started')
    p scramble_words("shan't") == "sahn't" # 'Punctuation should remain at the same place as it started')
    p scramble_words('-dcba') == '-dbca' # 'Must handle special character at the start')
    p scramble_words('dcba.') == 'dbca.' # 'Must handle special character at the end')
    p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth." # 'Must handle a full sentence')
    p scramble_words("equilibrium, think she's, is bliss a effluvium advantageous") == "ebiiilqruum, think seh's, is bilss a effiluuvm aaadegnotuvs"
    