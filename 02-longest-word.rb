# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(sentence)
  
  long_word = nil
  
  words = sentence.split(" ")
  
  idx = 0
  while idx < words.length
    current_word = words[idx]
    
    if long_word == nil
      long_word = current_word
    elsif current_word.length > long_word.length
      long_word = current_word
    end
    idx = idx + 1
  end
    return long_word
end

puts(longest_word("things and other thingamagigs"))
# These are tests to check that your code is working. After writing
# your solution, they should all print true.
