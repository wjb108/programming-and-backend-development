=begin
Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.
#undertanding
print odd numbers from 1 to 99, inlcuding 99
1..99
#test cases

# data structure

# algorithms
for loop

=end

# for i in 1..99
#   puts i if i % 2 != 0
# end

# value = 1
# while value <= 99
#   puts value
#   value += 2
# end

1.upto(99) {|i| puts i if i % 2 !=0 }
