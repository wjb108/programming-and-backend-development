def reverse_sentence(string)
  reversed_sentence = string.split.reverse.join(" ")
  p reversed_sentence
end

reverse_sentence(" ")
reverse_sentence("Hello World")
reverse_sentence("Reverse these words")
