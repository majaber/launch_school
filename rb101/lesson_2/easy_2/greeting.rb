# method to assist with output
def greeting(x)
  if x.include? "!"
    x = x.chop
    puts "HELLO #{x.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{x}."
  end
end

# running the program and asking for input
puts "What is your name?"
name = gets.chomp.capitalize

greeting(name)
