Strings use integer-based index.

str = 'abcdefghi'

str[2] => "c"
str[2, 3] => 'cde'

::slice method
  - returns the element at index and continueing for length elements specified
    by range of indices.
    slice(start, length) -> new_ary

ex: How would you reference 'grass'?
str = 'The grass is green'

str[4, 5] or str.slice(4, 5)

Arryas also use integer-based index

arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
arr[2, 3] => 'cde'
arr[2, 3][0] => 'c'

Hashes use key-value pairs

hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot' }

hsh['fruit']    # => "apple"
hsh['fruit'][0] # => "a"

Array Element Assignment
arr = [1, 2, 3, 4, 5]
arr[0] += 1 # => 2
^ is shorthand for arr[0] = arr[0] + 1
arr         # => [2, 2, 3, 4, 5]
