puts "What is the source file?"
source_file = gets.chomp #source file text.txt

puts "What is your destination file?"
destination_file = gets.chomp #destination source file destination.txt

source_file_contents = IO.read(source_file) #reads text.txt

IO.write(destination_file, source_file_contents)

