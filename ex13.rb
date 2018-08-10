first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"


print "give me a number:"
number = $stdin.gets.chomp.to_i

puts "I dont like that number"

print "Give me another number:"

another = $stdin.gets.chomp
number = another.to_i

puts "Thanks ;)"
