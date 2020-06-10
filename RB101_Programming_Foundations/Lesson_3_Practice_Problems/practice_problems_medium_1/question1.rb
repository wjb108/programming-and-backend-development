=begin
Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!

Understand the Problem
write a one-line program
creates the following output above 10 times
10.times

Examples / Test Cases
The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!

Data Structure

Algorithm

Abstraction

=end
# 10.times { |x| puts "The Flintstones Rock! \n The Flintstones Rock! \n  The Flintstones Rock!"}

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }
