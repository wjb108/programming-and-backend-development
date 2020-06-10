=begin
Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.
#undertanding
user input:
bill is an integer or float
tip is an integer, can convert to decimal
then display the tip amount
add the tip amount to the bill input value to get the total bill

#test cases
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

# data structure

# algorithms
=end

puts ">> What is bill amount?"
bill_amount = gets.chomp.to_f
puts ">> What is the tip%?"
tip_num = gets.chomp.to_f

tip_amount = (bill_amount * (tip_num/100)).round(2)
puts ">> The tip amount is: $#{tip_amount}"
total_bill = (bill_amount + tip_amount).round(2)
puts ">> The total is: $#{total_bill}"
