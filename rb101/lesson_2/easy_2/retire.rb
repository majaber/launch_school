# Declaring current year
# YEAR = 2021 => doesn't future proof our program
year = Time.now.year

# Obtaining user input
puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

# Calculating the year and how long until, retirement
years_until_retirement = retirement_age - age
year_of_retirement = year + years_until_retirement

# Output the result
puts "It's #{year}. You will retire in #{year_of_retirement}."
puts "You have only #{years_until_retirement} years of work to go!"
