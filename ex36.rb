def dead
  puts "You have died."
  exit(0)
end

def chest_room
  puts "There is a golden chest."
  puts "Do you open?"
  print "> "

  open_chest = $stdin.gets.strip

  # case open_chest
  # when "yes", "open", "do it"
  #   puts "you receive moneys"
  # else
  #   puts "not an option"
  # end
  if open_chest == "open" || open_chest == "yes"
    puts "You receive all the moneys"
  else
    puts "Not an option"
  end
end

def dungeon
  puts "You enter a dimly lit dungeon"
  puts "You hear strange noises from the other end of the hall"
  puts "Do you investigate? Or do you retreat?"

  print "> "

  choice = $stdin.gets.chomp

  if choice == "retreat"
    start_room
  elsif choice == "investigate"
    puts "You run after the noise and it leads you to two more doors."
    explore
  end
end

def explore
  puts "The noise takes you to two more doors"
  puts "Which do you choose"
  puts "Door 1: Or door 2:"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "1"
    puts "The noise was a moster. The monster eats you"
    dead
  elsif choice == "2"
    chest_room
  else
    puts "thats not an option"
  end
end










def start_room
  puts "you find yourself at the entrance to a dungeon"
  puts "There are two doors to get in, which do you choose?"
  puts "Door #1 or Door #2"
  print "> "
  choice = $stdin.gets.chomp

  if choice == "1"
    dungeon
  elsif choice == "2"
    puts "You fall down an infinite chasm..."
    dead
  end
end

start_room
