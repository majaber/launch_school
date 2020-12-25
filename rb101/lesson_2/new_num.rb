# a method that takes an array of integers, and returns
# a new array with every other element

# pseudo - code
# - Iterate over a given set of numbers
# - Return a new set that is every other number/ index
#
# START
# given_num = [1,2,3,4,5]
# SET new_num = []
# WHILE given_num
# return indexes 0 , 2, 4
# skipping indexes 1 & 3
# add to new_num array
# PRINT new_num
# END

given_num = [1, 2, 3, 4, 5]
new_num = given_num.select { |x| x.odd? }

print new_num
