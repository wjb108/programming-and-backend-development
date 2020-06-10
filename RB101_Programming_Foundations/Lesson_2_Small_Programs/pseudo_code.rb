=begin
Given a collection of integers.

Iterate through the collection one by one.
  - save the first value as the starting value.
  - for each iteration, compare the saved value with the current value.
  - if the saved value is greater, or it's the same
    - move to the next value in the collection
  - otherwise, if the current value is greater
    - reassign the saved value as the current value

After iterating through the collection, return the saved value.
=end

=begin
START

# Given a collection of integers called "numbers"

SET iterator = 1
SET saved_number = value within numbers collection at space 1

WHILE iterator <= length of numbers
  SET current_number = value within numbers collection at space "iterator"
  IF saved_number >= current_number
    go to the next iteration
  ELSE
    saved_number = current_number

  iterator = iterator + 1

PRINT saved_number

END
=end

#
# i = 1
# saved_number = 1
#
#
# while i <= numbers.size
#   current_number = numbers[i]
#   if saved_number >= current_number
#     next
#   else
#     saved_number = current_number
#
#   end
#   i += 1
#   puts saved_number
# end

numbers = [1, 2, 3, 4, 5, 6, 777, 100, 8, 9, 10, 88]

def find_greatest(numbers)
  saved_number = numbers.first

  numbers.each do |num|
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  puts saved_number
end

find_greatest(numbers)

=begin

a method that returns the sum of two integers
START
define a method named sum_of_two_integers that takes
two integers as an input
print the int1 + int 2

a method that takes an array of strings,
and returns a string that is all those strings concatenated together
define a method string_concat that take an input
the input is an array of strings
we will iterate through each element of the array
therefore strnging together the strings into a sentence

a method that takes an array of integers,
and returns a new array with every other element
define a method that take in an input
the input is an array of integers
we will iterate over the arry with map to return a new array
how will be make it return every other elemeent
perhaps by using the index method or some variation where the its an odd or even
value index to return
=end
