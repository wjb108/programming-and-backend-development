=begin
# understanding the problem
will define a method that takes in an integer argument
could create a loop that pushes 1 and 0s

input is argument that is an integer that represents the length of the string represented by '1's and '0's that repeat in that order

# test cases
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(1) == '1'
puts stringy(2) == '10'


# data structure

# algorithm
the argument will tell us the length of the stringy method

we could add strings of '1' and '0' ='10'etc
when the counter is odd it puts 1
  and when the counter is even i puts 0
we would want to check if current count in loop is even or odd
and add the corresponding 1 or 0 to prior variable
we will compare the current length with the iteration or loop and break when we reach something that is > the length of argument
=end

# my solution altough edge case doesn't work for stringy(0)
def stringy(length_of_string)
  result = ""
  counter = 0
  loop do
    counter += 1
    if counter.odd?
      result += "1"
    else
      result += "0"
    end
    break if counter == length_of_string
  end
  p result
end

stringy(5)

# LS answer doing it as an array, works for stringy(0)
def stringy(size)
  result = []

  size.times do |index|
    number = index.even? ? 1 : 0
    result << number
  end
  result.join
end

p stringy(5)
