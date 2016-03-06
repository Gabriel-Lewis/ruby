# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

def nearby_az(string)
    
    a_present = false
    z_present = false
    i = 0 
    a_location = 0
    letter = nil
    
    while i < string.length
     letter = string[i]
        if a_present
            if i <= a_location
             if letter == "z"
                 z_present = true
             end
            end
        elsif letter == "a"
         a_present = true
            a_location = i + 3
        end
      i = i + 1
    end
    if z_present == true
        return true
    else
        return false
    end
    
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)


