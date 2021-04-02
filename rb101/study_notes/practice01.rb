# Write a method that returns true if the string passed as an argument is a palindrome,
# false otherwise. A palindrome reads the same forward and backward.
# For this exercise, case matters as does punctuation and spaces.

# def palindrome?(string)
#   name = string
#   name_reverse = name.reverse
#   name == name_reverse
# end

def palindrome?(string)
  string == string.reverse
end

palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
ppalindrome?('madam') == true

part 2

def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  string = string.downcase.gsub(/[^a-z0-9]/i, '')

  palindrome?(string)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
