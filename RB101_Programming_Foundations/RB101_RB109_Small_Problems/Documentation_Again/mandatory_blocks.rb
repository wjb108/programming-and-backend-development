=begin
The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can.
Assume you have the following code:

a = [1, 4, 8, 11, 15, 19]

How would you search this Array to find the first element whose value exceeds 8?
=end
a = [1, 4, 8, 11, 15, 19]
p a.bsearch {|x| x > 8}

=begin
The documentation for Array#bsearch has the signature:

    bsearch {|x| block } → elem

This signature shows that
#bsearch takes only one argument - a block - and returns an element of the Array to which it is applied.
We can also see that the block is required, and that it takes one argument.
The text and examples below the signature tell and
show us that the block must return true or false when operating in what is called "find-minimum mode",
which is the usual use case.
=end
