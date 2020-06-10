=begin
Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:
# launch school answer
just to clarify, if you see ! or ? at the end of the method, it's actually part of the method name, and not a Ruby syntax. Therefore, you really don't now what the method is doing, even if it ends in those characters -- it depends on the method implementation. The other uses are actual Ruby syntax:

!= means "not equals"
? : is the ternary operator for if..else
!!<some object>> is used to turn any object into their boolean equivalent
!<some object> is used to turn any object into the opposite of their boolean equivalent, just like the above, but opposite.

# my response
what is != and where should you use it?
!= means not equal, it is the opposite of == and is used in conditionals

put ! before something, like !user_name
! has the effect of making a truthy obejct false and viceversa
!user_name # => false

put ! after something, like words.uniq!
! appended to a method often but not always signals that the method is mutating
assume words is an array of words
words.uniq! would ovewrite the entire list of words in the array with the unique words only

put ? before something
not sure be it's in the article about truthiness

put ? after something
? is often found after a method name such as include?, even?, odd? where
the method name contains the ? and the reader know that the method with resolve the question does it inclue, is it even? etc
a ? may also be used in an ternary operator in the syntax after the conditional statement
if a > 5 ? true : false

put !! before something, like !!user_name
will return true for a truthy object or false for a falsey object
=end
