puts "Which term would you like to access?\nbear, river or salmon: "
user_input = gets.chomp

dictionary = Hash.new

dictionary = {
  "bear" => "a creature that fishes in the river for salon.",
  "river" => "a body of water that contains salmon, and sometimes bears.",
  "salmon" => "a fish, sometimes in a river, sometimes in a bear, and sometimes in both."
}

puts dictionary[user_input]
