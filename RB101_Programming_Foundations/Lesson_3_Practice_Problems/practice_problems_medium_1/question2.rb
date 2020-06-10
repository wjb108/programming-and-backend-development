=begin
The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)

Why is this and what are two possible ways to fix this?
=end
# b/c you can't sum a string and an integer
# we can use string interpolation
puts "the value of 40 + 2 is " + (40+ 2).to_s

puts "the value of 40 + 2 is #{40 + 2}"
