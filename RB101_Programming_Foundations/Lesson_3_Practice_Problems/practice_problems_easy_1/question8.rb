=begin
Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

Turn this into an array containing only two elements: Barney's name and Barney's number
we want to retreive a key value pair
we know the key name and also want the corresponding value
we should save the key value pair as index 0 and 1 in an array
save that array and p to display
=end
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

result = [flintstones.keys[2], flintstones.fetch("Barney")]
p result

# much easier to use method .assoc
p flintstones.assoc("Barney")
