# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  common_counter = nil
  common = nil
  
  
  

 
  
  i = 0 
  
  while i < string.length
    counter = 0
    letter = string[i]
    idx2 = 0
    
    while idx2 < string.length
      letter2 = string[idx2]
      if letter == letter2
        counter = counter + 1
      end
      idx2 = idx2 + 1
    end
    if (common == nil) || (counter > common_counter)
      common = letter
      common_counter = counter
    end
    i = i + 1
  end
  
  return [common, common_counter]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
