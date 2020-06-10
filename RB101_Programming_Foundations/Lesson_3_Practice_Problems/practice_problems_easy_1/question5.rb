=begin
Programmatically determine if 42 lies between 10 and 100.

hint: Use Ruby's range object in your solution.
=end
# launch shool used the method .cover? which returns true if the object is between the beginning and the end of the range
(10..100).cover?(42)

# (10..100).include?(42) is another option 
