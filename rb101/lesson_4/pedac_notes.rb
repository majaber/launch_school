# PEDAC - lite notes in lesson 4 over P & D

P - [Understand the] Problem
3 steps
  * Read the problem description
  * Check the test cases, if any.
  * If any part of the problem is unclear, ask the interviewer or problem
  requester to clarify the matter.

  # PROBLEM:

  # Given a string, write a method change_me which returns the same
  # string but with all the words in it that are palindromes uppercased.

  # change_me("We will meet at noon") == "We will meet at NOON"
  # change_me("No palindromes here") == "No palindromes here"
  # change_me("") == ""
  # change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"

1. What is a palindrome?
  You might ask the interviewer to tell you what a palindrome is, and the interviewer
  would tell you that it is a word that reads the same forwards and backward.

2. Should the words in the string remain the same if they already use uppercase?
  Here, you can check the test cases.  In the fourth test case, the word LOVE
  already uses uppercase, and it remains uppercase in the solution.

3. How should I deal with empty strings provided as an input?
  The test cases frequently answer this question.  In this case, test case number
  3 provides the anser.  This is an implicit requirement that we can infer...

4. Can I assume all inputs are strings?
  Test cases don't show any non-string inputs, so you should ask whether the inputs
  can contain non-string values, and what you should do with them.  In this problem,
    we wont worry about non-string values.
5. Should I consider letter case when deciding whether a word is a palindrome?
  Again, test cases dont show any appropriate examples. The interviewer might tell you
  that the palindrome words should be case sensitive: /mom/ is a palindrome, /Mom/ is not.

6. Do I need to return the same string object or an entirely new string?
  This question is one of the most important and most overlooked that you can ask.
  Typically, while solveing problems, students make certain assumptions. One assumption might be that
  they need to return the same string object. Students often start solving the problem
  without checking whether the assumption is correct. For this reason,the student might
end up losing 10-15 minutes struggling with the wrong problem. In this problem
you should return an entirely new string.

7. Always verify your assumptions either by looking at the test cases or by asking the interviewer.
Some assumptions, like whether we should treat strings as case-sensitive or not, can be verified either
  by looking at the problem description, if that is mentioned there, or by checking the test cases.
  If you cant determine the answer with the test cases or problem description, you
  should ask the interviewer to clarify this for you.

To conclude this part of the PEDAC process, you need to write down what the inputs and outputs
for the problem are. You should also describe the rules that you must follow.
  The rules should encapsulate all the explicit and implicit requirements in the problem
  so, you should identify what the explicit requirements are, write them down, and then repeat the process
  for the implicit requirements.

#input: string
#output: string (not the same object)
#rules:
  # Explicit:
  # -every palindrome in the string must be converted to uppercase.
  # (Reminder: a palindrome is a word that reads the same forward and backward)
  # -Palindromes are case sensitive("Dad" is not a palindrome, but "dad" is.)
  # Implicit:
  # -the returned string shouldn"t be the same string object.
  #-if the string is an empty string, the result should be an empty array.

DATA STRUCTURE / ALGORITHM
# PROBLEM:
# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []


# P
# Questions:
# What is a substring?
# What is a palindrome?
# Do spaces matter? Are they even applicable?
# empty strings?
# Will inputs always be strings?
# What does case-sensitively mean?

  # input: string
  # output: string, an array of substrings to be exact
  # rules:
    #explicit: * case sensitive, meaning "abBa" is not valid
    #          * Only return palindromes
    # =>       * an empty array if there are no palindromes
    #implicit: * empty string returns an empty array
# From this we can see how the data structure to solve this would be an Array

# A -Algorithm
# - initialize a result variable to an empty array
# - create an array named substring_arr that contains all of the
#   substrings of the input string that are at least 2 characters long
# - loop through the words in the substring_arr array.
# - if the word is a palindrome, append it to the result array
# - return the result array

#^^^ This algo is not complete-  lacks implementation of finding
# all of the substrings for a given string

def palindrome_substrings(str)
  result = []
  substring_arr = substrings(str)
  substrings_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result
end

#developing a method for "substrings"
# for each starting index from 0 through the next to last index position
# => for each substring length from 2 until there are no substrings of that length
# =>    extract the substring of the indicated length starting at the indicated
# =>    index position
# => end of the inner loop
# end of the outer loop.
#

# New & complete algorithm
# => create an empty array called "result" that will contain all
#    required substrings
# => create a "starting_index" variable (value "0") for the
#    starting index of a substring
# => start a loop that iterates over "starting_index" from "0"
#    to the length of the string  minus 2
#   - create a "num_chars" variable (value "2") for the length of a substring
#   - start an inner loop that iterates over "num_chars" from "2"
#    to "string.length - starting_index"
#     - extract a substring of length "num_chars"
#     from "string" starting at "starting_index"
#     - append the extracted substring to the "result" array
#     - increment the "num_chars" variable by "1"
#   - End the inner loop
#   - increment the "starting_index" variable by "1"
# => end the outer loop
# => return the "result" array

# Example of some Pseudocode for the above
#
# START
#
# /* Given a string name "string" */
#
# => SET result = []
# => SET starting_index = 0
#
#   While starting_index <= length of string - 2
#     SET num_chars = 2
#     WHILE num_chars <= length of string - starting_index
#       SET substring = num_chars characters from string starting at index starting_index
#       append substring to result array
#       SET num_chars = num_chars + 1
#
#     SET starting_index = starting_index + 1
#
#   RETURN result
#
# END

# Some code we might use for the "substrings method"
def substrings(str)
  result = []
  starting_index = 0;

  while (starting_index <= str.length - 2)
    num_chars = 2
    while (num_chars <= str.length - starting_index)
      substring = str.slice(starting_index, num_chars)
      result << substring
      num_chars += 1
    end
    starting_index += 1
  end
  result
end

# - Inside the "is_palindrome?" method, check whether the stirng
#   value is equal to its reversed value. You can use the
#   String#reverse method.

def is_palindrome?(str)
  return str == str.reverse
end 
