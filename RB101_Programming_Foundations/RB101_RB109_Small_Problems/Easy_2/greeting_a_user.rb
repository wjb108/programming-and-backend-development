=begin
Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

#undertanding
ask user input for name

#test cases
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

# data structure
user input saved as string
string inperpolation
if else statemnt if contains ! all caps

# algorithms
save user input name
if else statement with == if contains ! with different puts as a result
=end

puts ">> What is your name?"
user_name = gets.chomp

if user_name.end_with?("!")
  puts "HELLO #{user_name.upcase.chop}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{user_name.capitalize}."
end
