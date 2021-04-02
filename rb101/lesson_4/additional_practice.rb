# practice problem 1
# turn the array into a hash
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
#
# flint_hash = {}
# flintstones.each_with_index do |k,v|
#   flint_hash[k] = v
# end
#
# p flint_hash

# practice problem 2
# add the values from the hash
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# ages_value = ages.values.sum
# p ages_value

# practice problem 3
# remove people >= 100 from the hash
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
#
# ages.delete_if do |key, value|
#   value >= 100
# end
#
# p ages

# practice problem 4
# find the minimum value
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# age_min = ages.values.min
# p age_min

# practice problem 5
# find the element that begins with 'be'
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# # p flintstones.index { |element| element.include?("Be")}
# p flintstones.index { |name| name[0, 2] == "Be" }


# practice problem 7
# Create a hash that expresses the frequency of which each letter occurs

# statement = "The Flintstones Rock"
# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a
# p letters
# letters.each do |letter|
#   letter_frequency = statement.scan(letter).count
#   result[letter] = letter_frequency if letter_frequency > 0
# end
# p result
# def letter(list)
#   letter_arr = []
#   letter_hash = {}
#   counter = 0
#
#   loop do
#     break if counter == list.size
#     current_letter = list[counter]
#     letter_arr << current_letter
#     letter_hash[letter_arr[counter]] = letter_arr.count(letter_arr[counter])
#     counter += 1
#   end
#   letter_arr
#   letter_hash
# end
#
# p letter(statement)

# practice problem 8
# What happens when we modify an array while iterating over it? What is the output?
# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end
#
# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   p numbers.pop(1)
# end
numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index}  #{numbers.inspect}  #{number}"
  numbers.shift(1)
end
