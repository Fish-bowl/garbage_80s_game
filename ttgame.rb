def chest_room
  puts "There is a golden chest."
  puts "Do you open?"
  print "> "

  open_chest = $stdin.gets.chomp

  if open_chest.include? "open"
    puts "You receive all the moneys"
  else
    puts "Not an option"
  end
end

reward_array = {"gold coins", "sword", "sheild", "amulet",
  item = reward[rand(reward)]
}

chest_room
