class Car

	# attr_reader :noise
	#definimos el atributo para poder acceder a él
	attr_reader :cities

	def initialize 

		@cities = []
		
	end

	def visit (city)
		
		#puts "visiting #{city}"
		#podemos acceder a él añadiendole un atributo -> << significa un push añadir contenido
		@cities<<city
		@city = IO.write('cities.txt', @cities)
		puts @cities
	end


end

car = Car.new 
car.visit "Barcelona"
car.visit "Bilbao"
car.visit "Madrid"


# class NoiseMaker

# 	def self.make_noise car

# 		puts car.noise
# 		puts car.noise
			
# 	end
		
# end

#  	quiet_car = Car.new "sssss"

#  	noisy_car = Car.new "BOOM!"

# NoiseMaker.make_noise quiet_car
# NoiseMaker.make_noise noisy_car


