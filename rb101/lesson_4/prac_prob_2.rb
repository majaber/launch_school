# problem 1
# [1,2,3].select do |num|
#   num > 5
#   'hi'
# end
# => [1,2,3]

# problem 2
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
# => 2

# problem 3


#problem 4
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
# => {'a' => 'ant'.....}
