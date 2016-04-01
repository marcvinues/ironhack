class Car
	def initialize noise
		@noise = noise
	end

	def make_noise
		puts @noise
	end
end
class RacingCar < Car
		def initialize
			@noise = "BrOMS!"			
		end
		
end


my_car = Car.new "Bruum"
my_car.make_noise

racing_car = RacingCar.new
racing_car.make_noise