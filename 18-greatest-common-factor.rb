# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)
  i = 1 
  number1_factor = nil
  number2_factor = nil
  gcd = nil
  
  while i <= number1
    if number1 % i == 0 
      number1_factor = i
    end
    i2 = 1
    while i2 <= number2
      if number2 % i2 == 0
        number2_factor = i2
        if number2_factor == number1_factor
         if gcd == nil
           gcd = number1_factor
         elsif gcd < number1_factor
           gcd = number1_factor
         end
             
        end
      end
      i2 += 1
    end
    i += 1 
  end
  return(gcd)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(3, 5) == 1: ' +
  (greatest_common_factor(3, 5) == 1).to_s
)
