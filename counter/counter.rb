# Write a program that adds together all the integers from `1` to
# `250` (inclusive) and `puts`es the total.

num = 0
total = 0

while num < 250 do
  num += 1
  total += num
end

puts total
