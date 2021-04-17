# example from Flowchart chapter in Lesson 2
# find the greatest number from a given collection

# while user wants to keep going
#   - ask the suer for a collection of numbers
#   - extract the largest one from that collection and save it
#   - ask the suer if they want to input another collection
# return the saved list of numbers

# START
# SET large_numbers = []
# SET keep_going = true
#
# WHILE keep_going == true
#   GET "enter a collection"
#   SET collection
#   SET largest_number = SUBPROCESS "extract the largest one from that collection"
#   large_numbers.push(largest_number)
#   GET "enter another collection"
#   IF "Yes"
#     keep_going = true
#   ELSE
#     keep_going = false
#   IF keep_going == false
#   exit the loop
#
# PRINT large_numbers
#
# END
