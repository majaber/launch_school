# Replace the word "important" with the word "urgent" in the provided string
#advice = "Few things in life are as important as house training your pet dinosaur."

advice = "Few things in life are as important as house training your pet dinosaur."

# ---- Problem ----
# Input: string
# Output: modified string
# Rules:
#   Explicit: return teh modified string.
#   Implicit: everything stays the same except for one word.
# Algo-Pseudco:
#  Split the words,
# cut the word and replace with gsub?

puts advice
puts ("----")
puts advice.gsub!("important", "urgent")
