# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   return false unless dot_separted_words.size == 4
#
#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     return false unless is_an_ip_number?(word)
#   end
#
#   true
# end
#
# p dot_separated_ip_address(10.4)
# not returning a false condition
# not handling the case that there are more or fewer than 4 components to the ip

P-
Is the input string an IP address?

Given method that determines if a string is a numeric
string between 0 and 255.


Must return false when needed.
  Check for dot_separated_words.size after splitting the string

Handle the case when there are more or fewer than 4 components.
  Use return false instead of break.
