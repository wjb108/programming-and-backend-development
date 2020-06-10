=begin
How could the unnecessary duplication in this method be removed?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

Understand the Problem
i assume the duplication refers to the two color conditionals?
we could make a ternary condional but doesn't remove two color conidtionals
Examples / Test Cases

Data Structure

Algorithm

Abstraction
=end

def color_valid(color)
  color == "blue" || color == "green"
end

p color_valid("blue")
p color_valid("yellow")
p color_valid("green")
