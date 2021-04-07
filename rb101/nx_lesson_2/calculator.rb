# build a command line calculator
# - asks the user for two numbers
# - asks for the type of operation to perform: add, subtract, multiply or divide
# - performs the operation on the two numbers
# - displays the result

# answer = gets
# puts answer

Kernel.puts("Welcome to Calculator!")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()

puts "What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide"
operator = gets.chomp

if operator == '1'
  result = number1.to_i + number2.to_i
elsif operator == '2'
  result = number1.to_i - number2.to_i
elsif operator == '3'
  result = number1.to_i * number2.to_i
elsif operator == '4'
  result = number1.to_f / number2.to_f
else
  puts 'Invalid selection'
end

puts "The result is #{result}!"
