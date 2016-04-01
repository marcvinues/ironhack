
# hash = {
# 	:wat => ["a", "b", {:wut => ["a", [[1,2,3,4,5,6,7,8,9, {:bbq => "home"}], "hey"]]}]
# }


# arr = [[0,1,2,3,4,5,{ :secret => { :unlock => ["nothing", "safe"]}}]]

# puts hash[:wat][2][:wut][1][0][9][:bbq]
# puts arr[0][5][:secret][:unlock][1]

#example os modules

# module Payable
# 	def salary
# 		puts "got paid!"
# 	end
# end

# class Programmer
# 	include Payable
# end

# class Designer
# 	include Payable
# end

# prog1 = Programmer.new
# prog1.salary

#example classes
# class Engine
# 	def move_pistons
# 		puts "pshhhhhhh"
# 	end
# end

# class Car < Engine
# 	def start
# 		move_pistons
# 	end
# end

# car1 = Car.new
# car1.move_pistons


class Car
	def initialize(my_engine)
		#creamos una variable para poder acceder a la clase engine
		@engine = my_engine
	end
	def start
		#una vez instanciada podemos llamar al metodo
		#@engine.move_pistons
		puts @engine.move_pistons
	end
end

class Engine
	def move_pistons
	 		"psssss"
	end 
end

puts Car.new(Engine).start




















