# Write a program that acts like a magic 8 ball.  It should:
# * Randomly choose one of five predictions:
#   * `It is certain`
#   * `It is decidedly so`
#   * `Ask again later`
#   * `Outlook not so good`
#   * `Very doubtful`
# * `puts` the prediction it chose.
# * Example output from running the program several times:
#   $ ruby question_1.rb
#   Ask again later
#   $ ruby question_1.rb
#   Ask again later
#   $ ruby question_1.rb
#   It is certain

puts "Enter your question here: "
user_input = gets.chomp

magic_answer = rand(1..5)

if magic_answer == 1
  puts "It is certain"
elsif magic_answer == 2
  puts "It is decidedly so"
elsif magic_answer == 3
  puts "Ask again later"
elsif magic_answer == 4
  puts "Outlook not so good"
elsif magic_answer == 5
  puts "Very doubtful"
else
  puts "There is an error"
end
