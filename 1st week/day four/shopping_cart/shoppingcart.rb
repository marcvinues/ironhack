require 'pry'
class ShoppingCart
	attr_accessor :name
	def initialize
		@name = name
		@products = []
	end
	def add_products product
		@products << product
		# puts @products
	end
	def show
		@products.each do |i|
			puts "#{i.name} price is: #{i.price}$"
		end
	end
	def cost
	checkout_price = 0		
		@products.each do |costs|
			checkout_price += costs.price	
		end
		puts "Total: #{checkout_price}$"
	end
end

class Shop
	attr_accessor :name, :price
	
	def initialize name, price
		@name = name
		@price = price
		@items = [] 
	end
end


new_shop = ShoppingCart.new
apple = Shop.new("Apple", 10)
oranges = Shop.new("Oranges", 5)
grapes = Shop.new("Grapes", 15)
banana = Shop.new("Banana", 20)
watermelon = Shop.new("Watermelon", 50)


new_shop.add_products(apple)
new_shop.add_products(oranges)
new_shop.add_products(grapes)
new_shop.add_products(banana)
new_shop.add_products(watermelon)

new_shop.show
new_shop.cost
