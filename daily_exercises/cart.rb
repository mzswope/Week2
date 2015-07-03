class Cart
  attr_accessor :item, :total_items
  
  def initialize
    @total_items ||= 0
    @items = []
  end
  
  def add_item(item)
    @total_items = @total_items + 1
    @items << item
  end
  
  def calculate_total_price
    @items.reduce(0) { |sum, item| sum + item.price }
  end
  
end

class Items
  attr_accessor :price
  def initialize(price)
     @price = price
  end 
end

class Apples < Items
end

class Bananas < Items

end

class Grapes < Items
end

class Oranges < Items
end

class Watermelon < Items
end

apple = Apples.new(10)
banana = Bananas.new(20)
grapes = Grapes.new(15)
orange = Oranges.new(5)
watermelon = Watermelon.new(50)

my_cart = Cart.new

my_cart.add_item(apple)
my_cart.add_item(orange)
my_cart.add_item(grapes)
my_cart.add_item(watermelon)

puts "The total number of items is #{my_cart.total_items}"
puts "The total price is #{my_cart.calculate_total_price}"



