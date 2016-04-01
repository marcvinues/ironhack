require 'pry'	

class MilkShake
	attr_reader :name
  def initialize (name)
  	@name = name
    @base_price = 3
    @ingredients = []
  end

  def add_ingredient(ingredient)
    @ingredients << ingredient
  end

  def price_of_milkshake
  		#Let's establish what our counter should be before we start adding ingredients into the mix
  		total_price_of_milkshake = @base_price
  			#Add each ingredients price to our total
  		@ingredients.each do |ingredient|
    		total_price_of_milkshake += ingredient.price
  		end
  		#return  our total price to whoever called for it
   		total_price_of_milkshake
	end
end

class Ingredient
	attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Shop
		def initialize
				@milkshakes_list = []
		end

	  def add_milkshakes milkshake
  			@milkshakes_list << milkshake
  	end

  	def checkout_milkshakes
  		checkout_prices = 0
  		@milkshakes_list.each do |milkshake|
  	 	 	checkout_prices += milkshake.price_of_milkshake
  	 	 	puts "#{milkshake.name} cost #{milkshake.price_of_milkshake}"
    	end
  		#binding.pry
  		puts "Total costs: #{checkout_prices}"
  	end
end


nizars_milkshake = MilkShake.new("Nizar")
marc_milkshake = MilkShake.new("Marc")

banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
chocolate_white = Ingredient.new("Chocolate white", 1)

nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
marc_milkshake.add_ingredient(chocolate_white)

pepeshop = Shop.new

pepeshop.add_milkshakes(nizars_milkshake)
pepeshop.add_milkshakes(marc_milkshake)

pepeshop.checkout_milkshakes