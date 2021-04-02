# number = 99
# loop do
#   puts (number - 1)
#   number = (number - 2)
#   break if number == 0
# end

# (1..99).each do |x|
#   if x % 2 == 0
#     puts x
#   end
# end

number = 1
until number >= 99
  puts number if number.even?
  number += 1
end
