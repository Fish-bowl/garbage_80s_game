#this line creates and crequires an argument ie. filename
filename = ARGV.first
#opens txt doc specified by user input "filename"
txt = open(filename)
#prints note and user input
puts "Here's your file #{filename}:"
#prints user selected txt. doc
print txt.read
#re asks for filename
print "Type the filename again: "
#collects user input
file_again = $stdin.gets.chomp
#opens new but old "text_again" txt. files
txt_again = open(file_again)
#shows user selected txt. doc
print txt_again.read
