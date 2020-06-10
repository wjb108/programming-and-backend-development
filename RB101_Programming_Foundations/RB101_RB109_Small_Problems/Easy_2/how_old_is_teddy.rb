=begin
Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

Example Output

Teddy is 69 years old!

#undertanding
generate a randome number between 20 and 200
rand(20..200) if i recall
#test cases

# data structure

# algorithms
generate random number and save it
string interpolation with saved random number
=end
# random_age = rand(20..200)
# puts "Teddy is #{random_age} years old!"

# extra credit ask for a name
puts "Type a name"
name_input = gets.chomp
random_age = rand(20..200)
puts "#{name_input} is #{random_age} years old!"
