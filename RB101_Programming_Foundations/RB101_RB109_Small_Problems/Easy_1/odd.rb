=begin
Write a method that takes one integer argument, which may be positive, negative, or zero.
This method returns true if the number's absolute value is odd.
You may assume that the argument is a valid integer value.

Examples:

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

Keep in mind that you're not allowed to use #odd? or #even? in your solution.
=end

def oddnum(number)
  if number.abs % 2 != 0
    puts true
  else
    puts false
  end
end

oddnum(2)
oddnum(5)
oddnum(-17)
oddnum(-8)
oddnum(0)
oddnum(7)
