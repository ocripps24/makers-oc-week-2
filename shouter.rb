# Write a program that:
# * Says, "Give me a number". The user enters a number.
# * Says, "Give me a number" again.  The user enters another number.
# * Continues asking for numbers until the user types "stop" instead
#   of a number.
# * `puts`es the total of all the numbers added together.
# * e.g.
#   ```
#   Give me a number
#   3
#   Give me a number
#   4
#   Give me a number
#   5
#   Give me a number
#   6
#   Give me a number
#   stop
#   18
#   ```

# * Note: When you run the automated tests, the tests will simulate
#   the user input.  You shouldn't need to enter any input manually.
#   If the tests hang when you run them, it probably means your code
#   doesn't work correctly, yet.

# * Note: You can assume that the user will always enter either an
#   integer or `stop`.

=begin
puts "Give me a number"
user_input = gets.chomp

if user_input == stop
  break
end
=end

puts "Enter your name: "
user_name = gets.chomp

if user_name.chr == "S"
  puts user_name.upcase
elsif user_name.chr == "s"
  puts user_name.upcase
else
  puts "Hi, #{user_name}"
end
