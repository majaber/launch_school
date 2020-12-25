def car(new_car)
  make = make(new_car)
  model = model(new_car)
  [make, model] # => 'multiple assignment' assigning more than one value on the same line
end

def make(new_car)
  new_car.split(" ")[0]
end

def model(new_car)
  new_car.split(" ")[1]
end

make, model = car("Ford Mustang")
make == "Ford"
model.start_with?("M") # => NoMethodError: undefined method 'start_with?' for nil: nilClass
