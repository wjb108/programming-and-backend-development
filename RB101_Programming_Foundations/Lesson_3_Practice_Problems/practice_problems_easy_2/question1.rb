=begin
In this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

see if "Spot" is present.

Bonus: What are two other hash methods that would work just as well for this solution?
=end
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.include?("Spot")

# has_key?
# key?
# member?
