=begin
starting with the string:

famous_words = "seven years ago..."

show two different ways to put the expected "Four score and " in front of it.
=end
famous_words = "seven years ago..."

beginning_text = "Four score and "
puts result = beginning_text << famous_words

famous_words = "seven years ago..."

beginning_text = "Four score and "
result = beginning_text + famous_words
puts result

puts famous_words.prepend(beginning_text)

# prepend method may come in handy
