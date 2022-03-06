# You are given a secret message you need to decipher. Here are the things you need to know to decipher it:

# For each word:

#     the second and the last letter is switched (e.g. Hello becomes Holle)
#     the first letter is replaced by its character code (e.g. H becomes 72)

# Note: there are no special characters used, only letters and spaces

# Examples

# decipherThis('72olle 103doo 100ya'); // 'Hello good day'
# decipherThis('82yade 115te 103o'); // 'Ready set go'

# Input: A string
# Output: A string

# Write a program that deciphers an encoded string. The string has been encoded such that its first integer characters represent an ordinal value of a character, and its second and last digits have been reversed. Return the deciphered string.

# Algorithm
# Define a method, decipher_this, which has one parameter, string
# Iterate through the substrings
#   Within each substring, grab the number characters and return their ordinal value back as a character, making that the first letter in the substring
#   Switch the second and last remaining characters and concatenate them with the returned letter
# Join back as a string with spaces and return

def decipher_this(string)
  string.split.map do |substring|
    ordinals = ''
    letters = ''
      substring.chars.each do |char| 
        if is_num?(char) 
          ordinals << char 
        else
          letters << char
        end
      end
    letters[0], letters[-1] = letters[-1], letters[0] unless letters.empty?
    ordinals.to_i.chr + letters
  end.join(' ')
end

def is_num?(char)
  char == '0' || char == char.to_i.to_s
end

p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"