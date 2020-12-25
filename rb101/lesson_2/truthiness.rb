# num = 5
# if num
#     puts 'valid number'
# else
#     puts 'error!'
# end

#
# if name = find_name
#   puts "got a name"
# else
#   puts "couldn't find it"
# end

name = find_name

if name && name.valid?
  puts "great name!"
else
  puts "either couldn't find name or it's invalid"
end 
