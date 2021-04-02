# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }
#
# def select_fruit(shopping_list)
#   key_items = shopping_list.keys
#   counter = 0
#   the_chosen_ones = {}
#
#   loop do
#     break if counter == key_items.size
#
#     current_item = key_items[counter]
#     current_value = shopping_list[current_item]
#
#     if current_value == 'Fruit'
#       the_chosen_ones[current_item] = current_value
#     end
#
#     counter += 1
#   end
#
#   the_chosen_ones
# end
#
# p select_fruit(produce)

# Double #'s with an odd index
my_numbers = [1, 4, 3, 7, 2, 6]

# def double_odd_index(numbers)
#   double_numbers = []
#   counter = 0
#
#   loop do
#     break if counter == numbers.size
#
#     current_num = numbers[counter]
#     if numbers.index(current_num).odd?
#       double_numbers << current_num * 2
#     else
#       double_numbers << current_num
#     end
#
#     counter += 1
#   end
#
#   double_numbers
# end
#
# p my_numbers
# p double_odd_index(my_numbers)

# multiply my_numbers by a specific criteria

# def multiply(numbers, selection_criteria)
#   multiplied_nums = []
#   counter = 0
#
#   loop do
#     break if counter == numbers.size
#
#     current_num = numbers[counter]
#     multiplied_nums << current_num * selection_criteria
#
#
#     counter += 1
#   end
#
#   multiplied_nums
# end
#
# p my_numbers
# p multiply(my_numbers, 3)

question = 'How many times does a particular character appear in this sentence?'

def select_letter(string, criteria)
  key_letter = ""
  counter = 0

  loop do
    break if counter == string.size

    selected_letter = string[counter]
    if selected_letter == criteria
      key_letter << selected_letter
    end
    counter += 1
  end
  key_letter
end

p select_letter(question, 'a').size # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""
