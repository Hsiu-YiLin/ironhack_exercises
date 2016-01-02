date="weekday"

class ShoppingCart
  def initialize
    @items = []
  end
  
  def add_item(item)
     @items.push(item)
     #Add your item to @items
  end

  def checkout
    total_checkout+= .price
    puts "Your total is #{}. Have a nice day!"
  end
end

class Item 
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price(price)
       if date =="weekday"
        return price
      end
  end
end

class Houseware < Item
  def price
      #Hmmm maybe this changes somehow..
  end
end

class Fruit < Item
  def price
      #Something special may go here too...
  end
end


joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.checkout
