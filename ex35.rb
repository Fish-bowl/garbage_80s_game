

#lines 1 - 20 define gold_room
def gold_room
  #says your in room of gold
  puts "This room is full of gold. How much do you take?"
#prompt
  print "> "
  #gets user input
  choice = $stdin.gets.chomp

#if user input has 0 or 1 check
  if choice.include?("0") || choice.include?("1")
    #links how_much to user input (either 1 or 0.) and converts to interger
    how_much = choice.to_i
    #if other input, user is dead and prints txt
  else
    dead("Man, learn to type a number.")
  end
  #an if statement on user input from line 10. for if less than 50
  if how_much < 50
    #gives win
    puts "Nice, your not greedy, you win!"
    exit(0)
  else
    #death
    dead("You greedy bastard!")
  end
  #end of gold_room
end

#start of bear_room
def bear_room
  #prints txt
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  #makes bear_moved false
  bear_moved = false
  #starts loop until bear has actually moved
  while true
    #prompt
    print "> "
    #user input gets
    choice = $stdin.gets.chomp
    #if user input is take honey dead
    if choice == "take honey"
      dead("The bear looks at you then slaps your face off.")
    #if user input is Taunt bear then bear moves and loop breaks enter gold room
    elsif choice == "Taunt bear" && !bear_moved
      puts "The bear has moved from the door. you can go through it now."
      bear_moved = true
    #if user input is Taunt bear. dead
  elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed and chews your leg off.")
    #user input open door then gold room
    elsif choice == "open door" && bear_moved
      gold_room
    #other input
    else
      puts "I got no idea what that means."
    end
  end
end

#start of cthulu_room block
def cthulu_room
  puts "Here you see the great evil Cthulu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  print "> "
  choice = $stdin.gets.chomp
  #
  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well that was tasty!")
  else
    cthulu_room
  end
end


def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulu_room
  else
    dead("You stumble around the room and fall on a knife.")
  end
end

start
