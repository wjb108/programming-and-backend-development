=begin
Build a program that displays when the user will retire and how many years she has to work till retirement.
#undertanding
request input from user:
how old are you?
at what age would you like to retire?

#test cases
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

# data structure
you take in user input which are strings
convert to integers with .to_i

# algorithms
save the current year
calculate years to retirement = retirement year - your age
display with string interpolation
=end
puts ">> What is your age? "
current_age = gets.chomp.to_i
puts ">> At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_to_retirement = retirement_age - current_age
retirement_year = years_to_retirement + current_year

puts ">> It's #{current_year}. You will retire in #{retirement_year}."
puts ">> You have only #{years_to_retirement} years of work to go!"
