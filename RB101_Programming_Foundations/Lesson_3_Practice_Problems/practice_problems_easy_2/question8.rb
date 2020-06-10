=begin
Shorten this sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

...remove everything starting from "house".

Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

As a bonus, what happens if you use the String#slice method instead?
=end
advice = "Few things in life are as important as house training your pet dinosaur."
sliced_part = advice.slice(0..38)
p sliced_part
advice = "Few things in life are as important as house training your pet dinosaur."
sliced_part = advice.slice(0, advice.index("house"))
advice = "Few things in life are as important as house training your pet dinosaur."
sliced_part = advice.slice(0..advice.index("house"))
p sliced_part
p advice

# use advice.index("house") instead of counting less prone to mistakes
