# Write a program that draws bar graphs.  It should:
# * Ask the user for a list of numbers.  The user enters them
#   separated by commas, e.g.: `10,4,2,7,5,1`.
# * Print a horizontal bar graph of the numbers in order.
#   * Bar should be made up of `-`s.
#
# * Example output from running the program:
#   ```
#   Enter some numbers to graph
#   10,4,2,7,5,1
#   ----------
#   ----
#   --
#   -------
#   -----
#   -
#   ```
#
# * Note: You can assume the user will only enter integers separated
#   by commas with no spaces.

=begin
puts "Enter some numbers to graph: "
# user_input = Array.new
user_input = gets.chomp
numbers = user_input.split(",")
# puts numbers.slice(0,3)
numbers = numbers.map { |x| x.to_i }
# puts numbers[1] * numbers[2]
numbers.each { |number| number.times { print "-" } }
=end

=begin
puts "Enter some numbers to graph: "
user_input = gets.chomp
numbers = user_input.split(",")
current_index = 0
numbers = numbers.map { |x| x.to_i }

while current_index < numbers.length do
  numbers.each { |number| number.t}
  numbers[current_index].times
  puts "-"
  current_index += 1
end
=end

puts "Enter some numbers to graph: "
user_input = gets.chomp
numbers = user_input.split(",")
numbers = numbers.map { |x| x.to_i }
numbers.each { |number| puts "-" * number }
