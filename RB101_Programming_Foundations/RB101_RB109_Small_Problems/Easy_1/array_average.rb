=begin
# Understand the Problem
input is an array of integers
define method average that calculation the average of the integers
# Examples/Test Case
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
# Data structure

# Algorithm
def method
  iterate on the array to sum the items in the array and divide by the number of items
=end
# my solution
def average(array)
  numerator = 0
  result = 0
  array.each do |x|
    numerator += x
    denominator = array.size
    result = numerator / denominator # coud add .to_f for more accurate answer
  end
  result
end

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])

# LS answer
def average(array)
  numerator_alt = array.reduce(:+)
  numerator_alt / array.count
end
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
