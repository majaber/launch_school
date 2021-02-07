advice = "Few things in life are as important as house training your pet dinosaur."

# open_advice = advice.slice!(/house.*r/)
# p open_advice
# p advice

p advice.slice!(0, advice.index('house'))

p advice
