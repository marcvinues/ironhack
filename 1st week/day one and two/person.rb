class Person
	
	attr_reader :name
	attr_accessor :age

	def initialize name, age
		@name = name
		@age = age
	end
	
end

p = Person.new "Pepe", 29
puts p.name

p.age = 30
puts p.age