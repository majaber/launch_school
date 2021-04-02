Loops can be used to perform an action on many, if not all, of
the elements in a collection.
------------------------------
Instead of this:
arr = [1, 2, 3, 4, 5]
arr[0] += 1
arr[1] += 1
arr[2] += 1
arr[3] += 1
arr[4] += 1
arr # => [2, 3, 4, 5, 6]
------------\/\/\/-------------
Use this:
arr = [1, 2, 3, 4, 5]
counter = 0

loop do
  arr[counter] += 1
  counter += 1
  break if counter == arr.size
end

arr # => [2, 3, 4, 5, 6]
-------------^^^---------------
When 'break' is placed on the last line within a loop:
With a 'do/while' loop, the code within the block is guaranteed to execute
at least once.

When break is in the first line within a loop:
It will be like 'while' loop.
The code below 'break' may or may not be executed at all, depending on the
condition.


Next
Tells the loop to skip the rest of the current iteration and begin the next one.
Any code after it will be ignored.

-------------------------------
Iterating over collections
Strings & Arrays are very similar. You'll use their index reference
to retrieve each and every element/string
Using a simple 'counter' variable should do the trick.

Hashes: more of a 2 step process.
In the provided example we converted the keys into an array .key method.
Then iterated by using hash retrieval hash[key] => value

Looping comprises four basic elements: a loop, a counter, a way to retrieve
the current value, and a way to exit the loop.
