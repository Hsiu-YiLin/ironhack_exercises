class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
  total_price_of_milkshake = @base_price
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

class ShakeShack
	
	def initialize
	@milkshakes = [ ]
	end
	
	def add_milkshake(milkshake)
		@milkshakes.push(milkshake)
	end

	def total_checkout
		total_price=0
		@milkshakes.each do |milkshake|
			total_price += milkshake.price_of_milkshake 
		end
		 total_price
	end
end
nizars_milkshake = MilkShake.new
banana = Ingredient.new "Banana", 2
chocolate_chips = Ingredient.new "Chocolate Chips", 1

nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
puts nizars_milkshake.price_of_milkshake

milkshakes=ShakeShack.new 
milkshakes.add_milkshake(nizars_milkshake)
puts "Your total is:"
puts milkshakes.total_checkout