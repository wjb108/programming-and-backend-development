# my solution - both work

def reverse_words(string)
  split_string = string.split # we split the words in the sentence into an array of strings for each word
  # we want to iterate over the split_string and for the strings that are >= to five char reverse the word
  # might be helpful to use a destructive method
  split_string.map do |word|
    if word.length < 5
      word
    elsif word.length >= 5
      word.reverse!
    end
  end
  split_string.join(" ")
end

p reverse_words('Professional')
p reverse_words('Walk around the block')
p reverse_words('Launch School')

# LS solution
def reverse_words(word)
  result = []
  word.split.each do |word|
    word.reverse! if word.length >= 5
    result << word
  end
  p result.join(" ")
end

reverse_words("Professional")
reverse_words("Walk around the block")
reverse_words("Launch School")
