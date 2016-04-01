# def solve_cipher(input, key)
	
# 	#text = "ifmmp"
# 	text_array = input.chars
# 	numbers = []

# 	for number in text_array
# 	#puts "#{text_array}".ord
# 	numbers << number.ord-key
# 	end	
# 	puts "#{numbers}"

# 	for t in numbers
# 		print t.chr
# 	end

# end
#  solve_cipher("p| uhdo qdph lv grqdog gxfn",3)

def solve_cipher(input, key)

	text_array = input.split("")
	#puts "#{text_array}"
	texts = []
		
		  for number in text_array

		  	texts << number.ord-key
		  	#puts "#{number}".ord-key
		  end

		  #puts texts

		  for t in texts
		  	m = t.chr	
		  	puts "#{m}"
		  end
		  

end
solve_cipher("p| uhdo qdph lv grqdog gxfn",3)