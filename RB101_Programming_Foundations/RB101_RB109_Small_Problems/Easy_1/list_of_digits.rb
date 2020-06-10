=begin
Write a method that takes one argument, a positive integer,
and returns a list of the digits in the number.

Examples:

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
=end

def digit_list(number)
  string = number.to_s
  splited_string = string.split("")
  result = splited_string.map { |i| i.to_i  }
  p result
end

digit_list(12345)
digit_list(7)
digit_list(375290)
digit_list(444)

puts ">> An alternative way, see code for differences"

def digits_alt1(number)
  arr = number.to_s.chars.map(&:to_i) #note you can use the formatting above for map
end
=begin
This array is almost what we want, but we need an array of numbers, not an array of strings.
Enumerable#map comes to the rescue. You might find the (&:to_i) part weird,
but this is Ruby syntactic sugar; it's shorthand for:

something.map { |char| char.to_i }
=end

p digits_alt1(12345)
p digits_alt1(7)
p digits_alt1(375290)
p digits_alt1(444)

puts ">> An alternative way, see code for differences"

def digits_alt2(number)
  digits_array = []
  loop do
    number, remainder = number.divmod(10)
    digits_array.unshift(remainder)
    break if number == 0
  end
  digits_array
end

p digits_alt2(12345)
p digits_alt2(7)
p digits_alt2(375290)
p digits_alt2(444)
