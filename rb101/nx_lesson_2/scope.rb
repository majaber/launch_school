# scope.rb

a = 5 # variable is initialized in the outerscope

3.times do |n|
  a = 3
  b = 5
end

puts a  # => 3
puts b # = nil, not initialized outside
