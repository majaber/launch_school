# problem 1
# [1, 2, 3].select do |num|
#   num > 5
#   'hi'
# end
# --------------------
# returns [1, 2, 3]
# because it only worries about the 'truthiness' of the final line
# 'hi' is truthy and therefore the elements are returned.
# the line above it, 'num > 5' is false and would have returned '[]'

# problem 2
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
# --------------------
# returns ['ant', 'bat']
# When given a block with no argument (obj?) it will return
# the # of elements that pass through the block with a truthy value

# problem 3
[1, 2, 3].reject do |num|
  puts num
end
#----------------------
# [1, 2, 3]
# no rejection criteria so depsite the block being there, it Will
# only return our current elements. Nothing 'rejected' into its
# own array, returns an array of 'falsey' values
# if the return value was false or nil the element would be selected

# problem 4
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
#-----------------------
# returns the first index/ letter as the key
# assigns the value to the whole word
# ['a' => 'ant', 'b' => 'bear', 'c' => 'cat']

# problem 5
hash = { a: 'ant', b: 'bear' }
hash.shift
#------------------------
# shift returns a 2 item array from the hash
# [a:, 'ant'] & {b: bear}(remains as a hash)

# problem 6
['ant', 'bear', 'caterpillar'].pop.size
#-------------------------
# pop will remove the last element, 'caterpillar'
# that return value of 'caterpillar' is then hit with the .size method
# it will return the number of characters in the word
# => '11'

# problem 7
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
#---------------------------
# [true, false, true]
# => true

# problem 8
arr = [1, 2, 3, 4, 5]
arr.take(2)
#--------------------------
# ::take - returns n elements from an array
# => [1, 2]
# Not destructive

# problem 9
{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
#----------------------------
# map returns a new array as specified by the block
# => [nil, 'bear']
# ::size method only asked for a value with more than 3 characters
# we have a nil in our new array because 'ant' value failed
# to meet the criteria of value.size > 3
# if the statement does not have a 'true' condition it will return
# nil.

# problem 10
[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
#------------------------
# returns a new array of [2,3]
# puts always returns 'nil' thus [2,3] are [nil, nil]
# => [1, nil, nil]
# the first condition '1' returned false and wasn't affected
# 2 & 3 were num > 1 therefore evaluated by 'puts num' which is nil
