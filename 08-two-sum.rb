# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
  i = 0
  first_var = 0
  second_var = 0
  third_var = 0
  #zero_present = false
  
  while i < nums.length
    x = 1
    first_var = nums[i]
    second_var = nums[x]
    third_var = second_var + first_var
    
    if third_var == 0
      return([x, i])
    
     
    else
      x += 1
      i += 1
    end
  end
  return nil
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)

