class Car
	def initialize (engine = Engine.new)
	 	@engine = engine
	end
	
	def start
	 	@engine = noise
	end
	
	def more_noise
		# @engine = "MEEEEE"
		Engine.new.noise
	end
end

class Engine
	def noise
		"PSSSSSS"
	end
end

car = Car.new
puts car

