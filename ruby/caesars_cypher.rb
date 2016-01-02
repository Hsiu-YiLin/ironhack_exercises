def solve_cipher(input,y)
	new_string=input.each_char.to_a
	
	new_string.each_index do |x|
		int=""
		z,q=0
		if new_string[x]==" "
		int<<new_string[x].ord
		print int.to_s
		elsif (new_string[x].ord+y)<97
			z=97+y
			q=96-z
			print int<<123-q
		elsif new_string[x]!=" "
		int<<new_string[x].ord+y
		print int.to_s
		

		end
	end
	puts 
end

solve_cipher("ifmmp",-1)
solve_cipher("pb uhdo qdph lv grqdog gxfn", -3)
# should return "hello"

#solve_cipher("pb uhdo qdph lv grqdog gxfn", -3)

#ord returns integer

#chr 