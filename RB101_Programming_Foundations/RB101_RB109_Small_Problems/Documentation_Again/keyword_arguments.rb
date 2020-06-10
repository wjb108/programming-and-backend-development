=begin
What does this code print?

5.step(to: 10, by: 3) { |value| puts value }
=end
5.step(to: 10, by: 3) { |value| puts value }
# => 5 8
# => correct answer although the values are printed as following:
# => 5
# => 8

=begin
If you need a method that works with numbers,
the following classes are worth searching through:

    Integer
    Float
    Numeric
    Math

Integer and Float inherit from Numeric.
Numeric is basically the superclass of all numeric types,
while Math is a module that supplies a lot of number crunching functionality.
  Choosing the right documentation to look at is difficult, so,
  for now, be aware that you may have to look in all these locations.

Starting with version 2.4.0, Ruby no longer uses Fixnum and Bignum;
all integer values are Integer objects.

As it happens, you can find #step described in the Numeric class documentation.
#step has 4 calling signatures, but we're interested in the first listed.
In this version, #step takes two keyword arguments (also called named arguments),
:by and :to (keyword argument names are symbols).
This shows up in our method signature:

    step(by: step, to: limit) { |i| block } → self

The argument named :by is a "step" value,
while the argument named :to is a limit.
  The text below the signature shows that the "step" value indicates
  how much to increment the index by with each iteration,
  while "limit" is the largest value; if the index exceeds this value,
    the loop exits.

We can also see that #step takes a loop in this first form,
and that it will execute the block for each value in the iteration.
=end
