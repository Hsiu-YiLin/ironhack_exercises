puts "What is the source file?"
source_file = gets.chomp
source_file_contents=IO.read(source_file)
IO.write(sourcenew.txt, source_file_contents)