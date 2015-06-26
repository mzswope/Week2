=begin
We’re going to create a small program to calculate the total price for the items in the shopping cart on our awesome new e-commerce website for fruit. We need something that calculates the total cost of our purchases but also that applies some discounts to some items.To do this exercise, you will need to understand and use the following concepts:

classes
methods
inheritance
instance variables
arrays
iterating through an array
accessor methods
Check, check, and check? Okay, let’s get started!

Iteration 1

Before coding the shopping cart, we need to define our items. We only sell five different items: apples, bananas, orange, grapes and watermelons.

apple: 10€ / $10
orange: 5€ / $5
grapes: 15€ / $15
banana: 20€ / $20
watermelon: 50€ / $50
Rather than creating the five products as separate classes and replicating all that code, create one item class and use inheritance to create the five different items. The only variable your Item class needs is the price of the item. Then create classes for each item in your store, inheriting from the Item class. When you create an instance of each class, you set the price of the item. Once you’ve written you classes, you should be able to do this:

oranges = Oranges.new(2)
bananas = Bananas.new(3)
oranges.price #returns 2
bananas.price #returns 3
Make a new class for the shopping cart. You need to be able to do two things with your shopping cart: add items, and calculate the total.

When you initialize your shopping cart (with the initialize method), make an empty array and save it as a variable (for example, you could call it total_items). This is where you will store your items.

Write a method to add items to your cart. It should take the item as an argument and add it to the total_items array.

Write a method to calculate the total. It should iterate through the total_items array and add up all the prices of each of the items. Then it should print the total price.

my_cart = Cart.new
my_cart.add_item (oranges)
my_cart.add_item(bananas)
my_cart.calculate_total
Bonus points if you use string interpolation to print a sentence like “Your total today is 5 euros.”  
=end

require 'pry'

class Cart
  attr_accessor :item, :total_items
  
  def initialize
    @total_items = []
  end
  
  def add_item(item)
    @total_items << item
  end

  
  # def calculate_total
    # @total_items.each |item| 
  # end
  
end

binding pry

class Items
  
  def initialize
     @item = item
  end 
end

binding pry

class Apples < Items
  def initialize(price)
    @price = price
  end
  
  def price

   end
end

class Bananas < Items
  def initialize(price)
    @price = price
  end
  def price

   end
end

class Grapes < Items
  def initialize(price)
     @price = price
   end
   def price

   end
end

class Oranges < Items
  def initialize(price)
     @price = price
   end
   def price

   end
end

class Watermelon < Items
  def initialize(price)
     @price = price
   end
   
   def price

   end
end

binding pry

apple = Apples.new(10)
apple.price
banana = Bananas.new(20)
banana.price
grapes = Grapes.new(15)
grapes.price
orange = Oranges.new(5)
orange.price
watermelon = Watermelon.new(50)
watermelon.price

my_cart = Cart.new

my_cart.add_item(apple)
my_cart.add_item(orange)
my_cart.add_item(grapes)
my_cart.add_item(watermelon)

puts "The total number of items is #{@total_items}"



