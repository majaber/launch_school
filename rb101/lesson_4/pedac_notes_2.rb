Pedac Problem Solving Videos

Video # 1
# Hand written notes in Goodnotes but need to 'learn' with my fingers and type
# out some of the examples here as well.

## Sum Even Number Rows 7:25 in on the first video example

Imagine a sequence of consecutive even integers beginning with 2. The integers
are grouped in rows, with the first row containing one integer, the second
row two integers, the third row three integers, and so on. Given an integer
representing the number of a particular row, return an integer
representing the sum of all the integers in that row.

# P
- Sequence of integers
- Sequence begins with two
- Integers are consecutive
- Sequence is grouped into rows
- Each row incrementally larger than the last: 1, 2, 3, ....
- Row "number" equals the number of elements in the rows
  - Row 1 has 1 element, row 2 has 2 elements, ....
- Input: a single integer
  - Identifies a 'row', which is a subset of a sequence of integers
- Output: a single integer
  - The sum of the integers in the row identified by the input integer

- Sequence:
2, 4, 6, 8, 10, 12, 14, 16, 18, ...

2
4, 6
8, 10, 12
14, 16, 18, 20
...

- How do we create the structure?

# E

row number: 1 --> sum of integers in row: 2
row number: 2 --> sum of integers in row: 10
row number: 3 --> sum of integers in row: 68

# D
2 --> 2
4, 6, --> 10
14, 16, 18, 20 -->68

- Overall structure representing sequence as a whole
- Individual rows within overall structure
- Individual rows in a set order in context of sequnce
- Individual rows contain integers
- Can assume that integers are in a set order i the context of the sequence

[
  [2],
  [4, 6],
  [8, 10, 12],
  [14, 16, 18, 20],
  ....
]

# Calculating the start integer:
# Rule: First integer of row == last integer of preceding row + 2
# Algorithm:
# - Get the last row of the /rows/ array
# - Get last integer of that row
# - add 2 to the integer


# A
1. Create an empty "rows" array to contain all of the rows
2. Create a 'row' array add it to the overall rows array
3. Repeat step 2 until all the necessary rows have been created
  - All rows have been created when the length of the rows array is equal to the input integer
4. Sum the final row
5. Return the sum

  # Elaborated on step 2 of Algo
  *Problem: Create a row*

  Rules:
  - Row is an array
  - Array contains integers
  - Integers are consecutive even numbers
  - Integers in each row form part of an overall larger sequence
  - Rows are of different lengths
  - Input: the information needed to create the output
    - The starting integer
    - Length of the row
  - Output: the row itself: /[8, 10, 12]/

  Examples:
  start: 2, length: 1 => [2]
  start: 4, length: 2 => [4, 6]
  start: 8, length: 3 => [8, 10, 12]

  Data Structures:
  - An array of integers

  Algorithm:
  1. Create an empty row to contain the integers
  2. Add the starting integer
  3. Increment the starting integer by 2 to get the next integer in the sequence
  4. Repeat steps 2 & 3 until the array has reached the correct length
  5. Return the row array

# C
Start with creating some test cases
Created a few methods to help us test these as we move along, we can invoke the method

* Final Thoughts *

- Not a completely linear process
- Move back and forward betweent the steps
- Switch from implementation mode to abstract problem solving mode when necessary
- Dont try to problem solve at the code level
