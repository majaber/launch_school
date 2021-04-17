# START
# # Given a collection of integers called "numbers"
#
# SET iterator = 1
# SET saved_number = value within numbers collection at space 1
#
# WHILE iterator <= length of numbers
#   SET current_number = value within numbers collection at space 'iterator'
#   IF saved_number >= current_number
#     go to next iteration
#   ELSE
#     saved_numbrer = current_number
#
#   iterator = iterator + 1
#
# PRINT saved_number
#
# END

# Now translate to real code

# def find_greatest(numbers)
#   saved_number = nil
#
#   numbers.each do |num|
#     saved_number ||= num # assign first value
#     if saved_number >= num
#       next
#     else
#       saved_number = num
#     end
#   end
#
#   saved_number
# end
#
# p find_greatest([12, 3, 34, 5, 55, 56, 9])

# problem 3 from notes on pseudo-code
# 3. Given an array of integers
#
#     Create an empty new_array
#
#     Iterate through the given array and return every other element
#
#     assign the returned values to new_array
#
#     Return that new_array
#
#     ---
#
#     START
#
#     SET new_array = []
#
#     SET counter = 0
#
#     WHILE counter ≤ given_array.length
#
#     SET current_integer = given_array(counter)
#
#     if counter = even
#
#     new_array += current_integer
#
#     counter +1
#
#     PRINT new_array
#
#     END

def every_other_one(numbers)
  new_array = []
  counter = 0

  while counter < numbers.length
    current_integer = numbers.values_at(counter)
      if counter % 2 == 0
        new_array << current_integer
      end
      counter += 1
  end
  new_array
end
p every_other_one([1,2,3,4,5,6])
