# loop do
#   puts 'Just keep printing...'
#   break
# end

# loop do
#   puts 'This is the outer loop.'
#
#   loop do
#     puts 'This is the inner loop.'
#     break
#   end
#   break
# end
#
# puts 'This is outside all loops.'

# iterations = 1
#
# loop do
#   puts "Number of iterations = #{iterations}"
#   break if iterations == 5
#   iterations += 1
#   # break if iterations > 5
# end

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp.downcase
#   break if answer == 'yes'
#   puts "Incorrect answer. Please answer 'yes'."
# end

# say_hello = true
#
# while say_hello
#   5.times { puts "Hello!" }
#   say_hello = false
# end

# numbers = []
#
# while numbers.length < 5
#   numbers << rand(0..100)
# end
#
# puts numbers

# count = 1
#
# until count > 10
#   puts count
#   count += 1
# end

# numbers = [7, 9, 13, 25, 18]
# count = 0
#
# until count == numbers.length
#   p numbers[count]
#   count += 1
# end

# for i in 1..100
#   puts i if i.odd?
# end

# friends = ['Sarah', 'John', 'Hannah', 'Dave']
#
# for friend in friends
#   puts "Hello #{friend}!"
# end
