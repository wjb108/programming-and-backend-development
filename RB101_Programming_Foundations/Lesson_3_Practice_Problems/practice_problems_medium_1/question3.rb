=begin
Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. How can you make this work without using begin/end/until? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.
Bonus 1

What is the purpose of the number % divisor == 0 ?
Bonus 2

What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?

Understand the Problem
defined method that works but fails when input == 0 or negative
want to replace begin/end/until
loop do break seems suitable replacement
  if fact a while loop was more suitable given that we don't want to allow 0 or negative values as input and a while loop where >0 will bypass the loop if the input is 0 or negative so we won't get an error 

Examples / Test Cases

Data Structure

Algorithm

Abstraction
=end

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

puts factors(100)
puts factors(1)
puts factors(0)
puts factors(-1)
