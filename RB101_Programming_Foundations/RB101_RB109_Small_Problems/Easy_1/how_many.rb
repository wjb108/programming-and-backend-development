=begin
Write a method that counts the number of occurrences of each element
in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

The words in the array are case-sensitive:
'suv' != 'SUV'. `
Once counted, print each element alongside the number of occurrences.

Expected output:

car => 4
truck => 3
SUV => 1
motorcycle => 2

=end
puts ">> case insensitive"
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'Car', 'truck'
]

def count_elements(array)
  arr_down = array.map(&:downcase)
  uniq_arr = arr_down.uniq
  uniq_arr.map {|word| puts "#{word} => #{arr_down.count(word)}"}
end

count_elements(vehicles)

puts ">> case sensitive"
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'Car', 'truck'
]

def count_elements(array)
  uniq_arr = array.uniq
  uniq_arr.map {|word| puts "#{word} => #{array.count(word)}"}
end

count_elements(vehicles)
=begin
>> my thought process
we need to display each element in the array
we need to count the amount of times each element appears in the array
the words are case sensitive
i can use the count method if i pass through the individual uniq entries
through the count method which will count the number of times they appear
=end
puts ">> Here's another alterantive, see code for differences"

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'Car', 'truck'
]

def count_alt_with_hashes(array)
  occurrences = {}

  array.uniq.each do |elements|
    occurrences[elements] = array.count(elements)
  end

  occurrences.each do |elements, count|
    puts "#{elements} => #{count}"
  end
end

count_alt_with_hashes(vehicles)

=begin
>> my thought process
so they started with an empty hash
they want to create key value pairs, where the uniq values of the array
are the keys and the amount of time they appear in the array at the value
then with those key value pairs will use string interpolation to get
desired result
=end

=begin
>> again for practice
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'Car', 'truck'
]

def counter_of_elements(array)
  key_value_pairs_of_elements_and_count = {}

  array.uniq.each do |elements|
    key_value_pairs_of_elements_and_count[elements] = array.count(elements)
  end

  key_value_pairs_of_elements_and_count.each do |elements, count|
    puts "#{elements} => #{count}"
  end
end

counter_of_elements(vehicles)
=end
