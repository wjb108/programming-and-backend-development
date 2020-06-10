=begin
Assume you have the following code:

require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)

What will each of the 4 puts statements print?
The documentation for Date::new (note that it is a class method) shows that its signature is:
new([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date

This signature uses [] to show that all of the arguments are optional.
This is only a documentation convention; the brackets should not be included in your program.

Note that the brackets are nested with this method;
items inside the outermost bracket pairs can only be omitted if all of the innermost bracket pairs are omitted as well.
Hence, if you omit the month argument, you must omit mday and start, but you must supply year.
From this signature, then, we can see that arguments to new can be supplied in 5 different ways:

Date.new                           # everything defaults
Date.new(2016)                     # month, mday, start use defaults
Date.new(2016, 5)                  # mday, start use defaults
Date.new(2016, 5, 13)              # start uses default
Date.new(2016, 5, 13, Date::ITALY) # nothing defaults
=end

require 'date'

puts Date.new
# => -4712-01-01
puts Date.new(2016)
# => 2016-01-01
puts Date.new(2016, 5)
# => 2016-05-01
puts Date.new(2016, 5, 13)
# => 2016-05-13
