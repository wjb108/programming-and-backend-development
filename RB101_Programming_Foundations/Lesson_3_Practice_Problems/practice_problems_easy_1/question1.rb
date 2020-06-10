=begin
expect puts numbers => numbers = [1, 2, 2, 3]
It prints out
1
2
2
3
=> nil
the puts method automatically call to_s on it argument and that is why you see the output like above.
had the last line been p numbers the output would have been
[1, 2, 2, 3]
=> [1, 2, 2, 3]
note than unlike the other options there is a return value of the array unlike the nil return value with puts 
that is because the p method automatically call inspect on its argument which gives a different formatting on the ouput
puts numbers.inspect would also output
[1, 2, 2, 3]
=> nil

=end
