def number?(input)
  input.to_i.to_s == input || input.to_f.to_s == input
end

p number?("99")
p number?("6.78")
p number?("2")
p number?("-0")
p number?("Hello")
