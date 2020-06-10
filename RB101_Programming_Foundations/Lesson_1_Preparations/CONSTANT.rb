#Can I access a constant that's defined outside a method?
#with the follow code below we can answer our own question
#
# NUMBERS = [1, 2, 3]
#
# def test
#   puts NUMBERS.inspect
# end
#
# test

#Why is it that a constant is accessible from a method, but a local variable isn't?
NUMBERS = [1, 2, 3]
arr = [1, 2, 3]

def test
  puts NUMBERS.inspect
  puts arr.inspect
end

test

# => [1, 2, 3]
# => CONSTANT.rb:18:in `test': undefined local variable or method `arr' for main:Object (NameError)
=begin
the reason that the test method can access the constant but not the local variable
is because local variables and constants have different scoping rules;
we'll talk about that more in the later lessons.
=end
