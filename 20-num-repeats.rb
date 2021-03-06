# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
    i = 0 
    count = 0
    check = nil
    
    while i < string.length
        letter = string[i]
        i2 = 1 
        while i2 < string.length
            letter2 = string[i2]
            
            if i < i2
                if letter == letter2
                    if check == nil
                        check = letter
                        count += 1
                    elsif letter != check
                        count += 1
                        check = letter
                    end
                end
            end
            
            i2 += 1
        end
        i += 1
    end
    return(count)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
