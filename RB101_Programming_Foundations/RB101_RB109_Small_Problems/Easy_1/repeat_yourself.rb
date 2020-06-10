=begin
Write a method that takes two arguments, a string and a positive integer,
and prints the string as many times as the integer indicates.

Example:

repeat('Hello', 3)

Output:

Hello
Hello
Hello
=end

def repeat(a, b)
  b.times {|i| puts "#{a}"}
end
repeat("Hello", 5)

puts ">> An alternative way to do it is bellow, review code for differences"

def repeat_alt(string, number)
  number.times do
    puts string
  end
end
repeat_alt("Hello", 5)
