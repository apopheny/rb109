# Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. 

# Problem: Write a program that receives a string which is formated as a URL, from which it will return the domain name of the site address.

# Input: A string
# Output: A string

# Data structure: An array of excluded substrings

# Algorithm:
# Initialize a constant, EXCLUDED_SUBSTRS that contains common formats that are part of URLs but are not domain names
# Define a method, domain_name, that takes one parameter, url_string
# Delete anything that is after the homepage url
# Iterate through EXCLUDED_SUBSTRS and delete any matching substrings from string
# Return url_str

# Helper Method to delete string after single slash, homepage_only(url_str)
#   Iterate through string by index
#     If an index position is '/' and neither position ahead of or behind it is '/'
#     Delete the string from that index position to its end
# return url_str

EXCLUDED_SUBSTRS = (%w(https http .com .ru .net .org .gov .edu .jp www. www .ca .uk : .co) << "//").sort.reverse

def domain_name(url_str)
 result = homepage_only(url_str)
 EXCLUDED_SUBSTRS.each { |disallowed| result.sub!(disallowed, '') }
 result.downcase
end

def homepage_only(url_string)
  working_string = url_string.dup
  (0...working_string.size).each do |index|
    if working_string[index] == '/' && working_string[index - 1] != '/' && 
      working_string[index + 1] != '/'
      working_string.sub!(url_string[index..-1], '') 
      return working_string
    end
  end
  working_string
end

p domain_name("http://github.com/carbonfive/raygun") == "github" # Is not .com, is not http:// does not occur after a single /
p domain_name("http://www.zombie-bites.com") == "zombie-bites" # Is not http://, is not www., is not .com
p domain_name("https://www.cnet.com") == "cnet" # Is not https://, is not www., is not .com
p domain_name("http://google.com") == "google" # Is not http://, is not .com
p domain_name("http://google.co.jp") == "google" # is not http://, is not .co or .jp
p domain_name("www.xakep.ru") == "xakep" # is not www. is not .ru
p domain_name("https://youtube.com") == "youtube" # is not https:// is not .com