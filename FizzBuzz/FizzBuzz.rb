# Write a program that:
# * Calculates the "FizzBuzz sequence" from 1 to 20.
#   * For each integer between 1 and 20 (inclusive).
#     * If the number is divisible by 3, replace the number with `Fizz`.
#     * If the number is divisible by 5, replace the number with `Buzz`
#     * If the number is divisible by 3 and 5, replace the number with
#       `FizzBuzz`.
#     * If the number is divisible by neither 3 or 5, keep the number.
# * `puts`es these "FizzBuzz sequence" entries, one per line.

num = 0

while num < 20
  num += 1
  if (num % 3 == 0 && num % 5 == 0)
    puts "FizzBuzz"
  elsif num % 5 == 0
    puts "Buzz"
  elsif num % 3 == 0
    puts "Fizz"
  else
    puts num
  end
end

# OR YOU CAN DO IT LIKE THIS

=begin
for num in 1..100
  if num % 15 == 0
    puts "FizzBuzz"
  elsif num % 5 == 0
    puts "Buzz"
  elsif num % 3 == 0
    puts "Fizz"
  else
    puts num
  end
end
=end
