=begin
#undertanding
we take an argument that is an integer
def a method to add the inidividual digits  of the inputted integer
do not use wile, until, loop or each
#test cases
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
# data structure
dealing with integer
operations +
# algorithms
turn integer to string
split string integer that -> to an array
use reduce method to add item of array
=end
def sum(integer)
  array_of_digits = integer.to_s.chars
  array_of_digits_int = array_of_digits.map {|x| x.to_i}
  result = array_of_digits_int.reduce(:+)
end
puts sum(23)
puts sum(496)
puts sum(123_456_789)
