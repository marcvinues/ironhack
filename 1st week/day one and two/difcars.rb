class Car
	def initialize
		@noise = "Bruuum"
		@wheels = 4		
	end
end

class Motorbike
	def initialize
		@noise = "PAPAPAPA"
		@wheels = 2
	end
end

class WheelCounter
	def self.count vehicles
		vehicles.reduce(0) do |sum, vehicle|
			sum + vehicle.wheels
		end
	end
end

vehicles = [Car.new, Motorbike.new]
wheels_count = WheelCounter.count vehicles


# module wheels
# 	def number_total
		
# 	end
# end