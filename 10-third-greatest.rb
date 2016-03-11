# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
    i = 0
    largest = nil
    second = nil
    third = nil
    
    while i < nums.length
        num = nums[i]
        
        if largest == nil
            largest = num
        elsif largest < num
            third = second
            second = largest
            largest = num
        elsif largest > num
            if second == nil
                second = num
            elsif second < num
                third = second
                second = num
            elsif second > num
                if third == nil
                    third = num
                elsif third < num 
                    third = num
                end
            end
        end
        i = i + 1
    end
  
    return(third)
    
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
