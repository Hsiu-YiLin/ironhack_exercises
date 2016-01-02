string1 = gets.chomp
#"Have a nice day." => ["a", "day", "Have", "nice"]
#"Fools fall for foolish follies." => ["fall", "follies", "foolish", "Fools", "for"]
#"Ruby is a fun language!" => ["a", "fun", "is", "language", "Ruby"]

string_array1=string1.split(" ")

string_array1.each_index do |x|
	puts string_array1[x]
		if string_array1[x].include? "."
		string_array1[x]= string_array1[x].delete "."
		end
		if string_array1[x].include? "!"
		string_array1[x]= string_array1[x].delete "!"
		end
end

string_array1.sort! {|a,b| a.upcase<=>b.upcase}

puts "Modified"
puts string_array1