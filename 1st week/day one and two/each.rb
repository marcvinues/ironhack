require 'pry'
#example of using each

# class ClassMates
# 	mates = ["Marc", "Pepe", "Unai"]

# 	mates.each do |mate|
# 		puts "Good morning " + mate
# 	end

# end


#example using map

# cities = ["miami","madrid","barcelona"]

# cities.map do |item| 
# 	puts item.capitalize 
# end


#example using reduce

numbers = [1,2,3,4,5]


result = numbers.reduce(10) do |sum,number|
	sum+number
end
binding.pry

puts result