# Group the array of hashes below into a hash, where each key of the hash is a sport,
# and each value of the hash is a list of names of people who play that sport.

# 1. Set up a new hash (sorted_by_sport will do as a name for now).
# 2. Go through the players.
# 3. For each player (player_under_consideration will do as a name for now),
# take a note of the sport they play (sport will do as a name for now).
# 4. Check the sorted_by_sport hash. If sport does not exist as a key on that
# hash, set sport equal to an array containing the name of player_under_consideration.
# Then move to the next player.
# 5. Else, if sport DOES exist as a key on the hash, push the player_under_consideration's'
# name into the array that already exists. Then go to the next player.

players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]

sorted_by_sport = {}

players.each do |player|
  sport = player[:sport]

  if sorted_by_sport[sport] == nil
    sorted_by_sport[sport] = []
  end
  sorted_by_sport[sport].push(player[:name])
end

puts sorted_by_sport
