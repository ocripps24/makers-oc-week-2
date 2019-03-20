# ARRAY TIP 1

# Shows how variables, in this case a counter variable, can be used
# as an way to access a specific index / element in an array. When
# combined with a counter, it's a way to iterate through an array
# i.e. it's the more complicated version of .each

puts "ARRAY TIP 1"

my_array = ["Hello", "there", "friend"]
current_index = 0

while current_index < my_array.length do
  puts my_array[current_index]
  current_index += 1
end

puts "-------------------------"

# ARRAY TIP 2

# The code below shows how to filter an array to extract particular elements

puts "ARRAY TIP 2"

list_of_numbers = [17, 2, -1, 88, 7]
accumulator = []

list_of_numbers.each do |number|
  if number < 10
    accumulator.push(number)
  end
end

puts accumulator

puts "-------------------------"

# ARRAY TIP 3

# the .include? method can be used to check whether an array contains
# particular elements or not.

puts "ARRAY TIP 3"

words = ["Hello", "World!"]
puts words.include?("Hello")
