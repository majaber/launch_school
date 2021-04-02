# Tip calculator

puts "What is the bill? "
bill_amount = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f
tip = (tip_percentage * 0.01) * bill_amount

total = tip + bill_amount

puts "The tip is $" + format("% .2f", tip)
puts "The total is $"+format("% .2f", total)
