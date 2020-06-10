=begin
Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Example Run

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

#undertanding
user input:
length_of_room in meters
width_of_room in meters
save inputs

# data structure

# algorithms
multiply inputs to find out area, m2 of the room
do the equivalency calculation of sq ft
=end
SQM_TO_SQFT = 10.7639
puts ">> What is the length of the room in meters:"
length_of_room = gets.chomp.to_f
puts ">> What is the width of the room in meters:"
width_of_room = gets.chomp.to_f

area_m2 = (length_of_room * width_of_room).round(2)
area_ft2 = (area_m2 * SQM_TO_SQFT).round(2)

puts ">> The area of the room is: \n #{area_m2} square meters \n #{area_ft2} square feet"

# Further Exploration
=begin
Modify this program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters.
=end
SQFT_TO_SQM = 1/10.7639
SQFT_TO_SQ_IN = 144
SQFT_TO_SQ_CM = 929.03
puts "Further Exploration"
puts ">> What is the length of the room in ft:"
length_of_room = gets.chomp.to_f
puts ">> What is the width of the room in ft:"
width_of_room = gets.chomp.to_f

area_ft2 = (length_of_room * width_of_room).round(2)
area_in2 = (area_ft2 * SQFT_TO_SQ_IN).round(2)
area_cm2 = (area_ft2 * SQFT_TO_SQ_CM).round(2)

puts ">> The area of the room is: \n #{area_ft2} square feet \n #{area_in2} square inches \n #{area_cm2} square centimeters"
