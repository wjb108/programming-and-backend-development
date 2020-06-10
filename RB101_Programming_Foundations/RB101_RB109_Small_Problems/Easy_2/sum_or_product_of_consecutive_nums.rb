=begin
Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

#undertanding
user input: an integer greaer than 0
prompt to sum or multiply

#test cases
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.

>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

# data structure
user input convert to integer
# algorithms
if else statement
need to list all the numbers from greater than 0 to integer_input

reduce(:+)
reduce(:*)

=end
puts ">> Please enter an integer greater than 0:"
integer_input = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation_input = gets.chomp

if operation_input == "s"
  result = 1.upto(integer_input).reduce(:+)
  puts "The sum of the integers between 1 and #{integer_input} is #{result}."
elsif operation_input == "p"
  result = 1.upto(integer_input).reduce(:*)
  puts "The product of the integers between 1 and #{integer_input} is #{result}."
end

# def compute_sum(number)
#   total = 0
#   1.upto(number) { |value| total += value }
#   total
# end
#
# def compute_product(number)
#   total = 1
#   1.upto(number) { |value| total *= value }
#   total
# end
#
# puts ">> Please enter an integer greater than 0:"
# integer_input = gets.chomp.to_i
# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation_input = gets.chomp
#
# if operation_input == "s"
#   total = compute_sum(integer_input)
#   puts ">> The sum of the integers between 1 and #{integer_input} is #{total}."
# elsif operation_input == "p"
#   total = compute_product(integer_input)
#   puts ">> The product of the integers between 1 and #{integer_input} is #{total}."
# else
#   puts ">> Oops unknown operation!"
# end
