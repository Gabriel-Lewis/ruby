# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
#
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
#
# Difficulty: medium.

def capitalize_words(string)
  words_array = string.split(" ")
  
  i = 0
  while i < words_array.length
      word = words_array[i].split("")
      
      idx = 0 
      
      while idx <= word.length
        if idx == 0 
          word[idx] = word[idx].to_s.upcase
          
        end
        
       idx += 1
       
      end
      words_array[i] = word.join
      #print(word.join)
    i += 1
  end
  #print(words_array)
  return(words_array.join(" "))
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'capitalize_words("this is a sentence") == "This Is A Sentence": ' +
  (capitalize_words("this is a sentence") == "This Is A Sentence").to_s
)
puts(
  'capitalize_words("mike bloomfield") == "Mike Bloomfield": ' +
  (capitalize_words("mike bloomfield") == "Mike Bloomfield").to_s
)
