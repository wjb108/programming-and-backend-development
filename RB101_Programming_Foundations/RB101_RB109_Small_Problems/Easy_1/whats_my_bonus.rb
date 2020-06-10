=begin
#undertanding
two inputs:
positive integer
boolean true or false

if boolean is true the bonus is half of the integer input
if boolean is false the bonus is 0

#test cases
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
The tests above should print true.

# data structure

# algorithms
define method(salary, boolean) to folow would be an if/else statement tied to the boolean
if boolean is true, salary = half of the integer
if false 0

=end
# def calculate_bonus(salary, boolean)
#   if boolean == true
#     bonus = salary / 2
#   else
#     bonus = 0
#   end
# end
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# using the ternary operator solution
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
