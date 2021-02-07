# Convert the following string in 4 different ways
munsters_description = "The Munsters are creepy in a good way."
# * The first letter in the first two words are lower case "tHE mUNSTERS"
munsters_description.upcase!
munsters_description.sub!('THE', 'tHE')
munsters_description.sub!('MUNSTERS', 'mUNSTERS')
p munsters_description
# * Only the first letter is capitalized... all else downcase
munsters_description.downcase!
munsters_description.sub!('the', 'The')
p munsters_description
# * All lowercase
p munsters_description.downcase!
# * All uppercase
p munsters_description.upcase!
