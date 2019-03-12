# Write a program that:
# * Calculates the first 20 Fibonacci numbers.
#   * The first Fibonacci number is 0.
#   * The second Fibonacci number is 1.
#   * Every Fibonacci number after that is calculated by adding the
#     previous two Fibonacci numbers together e.g. the third Fibonacci
#     number is the result of `0 + 1`.
# * `puts`es these numbers, one per line.

a = 0
b = 1
c = a + b
num = 0

while num < 20 do
  if num < 1
    puts a
  elsif num < 2
    puts b
  else
    puts c
    a = b
    b = c
    c = a + b
  end
  num += 1
end
