The two most common actions to perform on a collection are
selection & transformation.

Selection is picking certain elements out of a collection depending
on some criterion.
  - ex. picking out all of the odd integers from an array
  - if there are n elements in a collection, you'll have n or less back
Transformation is manipulating every element in the collection.
  - ex. increment all elements of the array by 1
  - n elements will mean exactly n elements will be returned

Both utilize these 4 things:
a loop,
a counter,
a way to retrieve the current value,
and a way to exit the loop

They both require some criteria:
  Selection uses this to determine which elements
  are selected
  Transformation uses this to determine how to perform
  the transformation.

#Selection
alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0

loop do
  current_char = alphabet[counter]

  if current_char == 'g'
    selected_chars << current_char # appends current_car into the selected_chars string
  end

  counter += 1
  break if counter == alphabet.size
end

selected_chars # => "g"

#Transformation
fruits = ['apple', 'banana', 'pear']
transformed_elements = []
counter = 0

loop do
  current_element = fruits[counter]

  transformed_elements << current_element + 's'

  counter += 1
  break if counter == fruits.size
end

transformed_elements # ["apples", "bananas", "pears"]

* When performing transformation, it's always important to
pay attention to whether the original collection was
mutated or if a new collection was returned.

def select_vowels(str)
  selected_chars = ""
  counter = 0

  loop do
    current_char = str[counter]

    if "aeiouAEIOU".include?(current_char)
      selected_chars << current_char
    end

    counter += 1
    break if counter == str.size
  end

  selected_chars
end

# P - a new hash with only fruits
# output: {"apple" => "Fruit", "pear"=> "Fruit"}

# Go through each key-value pair to determine if its a fruit

def select_fruit(food)
  food.select {|k,v| v == "Fruit"}
end

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    # this has to be at the top in case produce_list is empty hash
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == "Fruit"
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end

def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if current_number.index.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

# writing a more generic general_select method
# so that we can specify wheter we are interested
# in selecting fruits or vegies
def general_select(produce_list, selection_criteria)
  produce_keys = produce_list.keys
  counter = 0
  selected_produce = {}

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    # init a local variable to pull from the produce hash[key]
    current_value = produce_list[current_key]

    # used to be current_value = "Fruit"
    if current_value == selection_criteria
      selected_produce[current_key] = current_value
    end

    counter += 1
  end

  selected_produce
end

# what we will use:
produce = {
  "apple" => "Fruit"
  "carrot" => "Vegetable"
  "pear" => "Fruit"
  "broccoli" => "Vegetable"
}

general_select(produce, "Fruit") # => {"apple" => "Fruit", "pear" => "Fruit"}
general_select(produce, "Vegetable") # => {"carrot" => "Vegetable", "broccoli" => "Vegetable"}
general_select(produce, "Meat") # => {}

# update our double_numbers method to not only be able
# to double the values but to multiply by any number
# create method multiply that can take an additional argument
# to determine the transformation criteria

def multiply(numbers, transformation_criteria)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_num = numbers[counter]
    current_num = current_num * transformation_criteria
    multiplied_numbers << current_num

    counter += 1
  end

  multiplied_numbers
end

question = "How many times does a particular character appear in this sentence?"

def select_letter(sentece, character)
  selected_chars = ""
  counter = 0

  loop do
    break if counter == sentence.size
    current_char = sentence[counter]

    if current_char == character
      selected_chars << current_char
    end

    counter += 1
  end

  selected_chars
end

select_letter(question, "a") # => "aaaaaaaa"
select_letter(question, "t") # => "ttttt"
select_letter(question, "z") # => ""
