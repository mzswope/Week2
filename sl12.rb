# SL12. Crazy numbers

# We will rest from TV shows for a while. I mean, I love them, but even sometimes it's nice to just stop and do something else.

# And what else is fun? Numbers! We are going to write a nice Numermaster class that treats with, well... yeah, numbers.

# Its first method will take an array of numbers. If most of them are positive, it should return only the positive ones. If most of them are
# negative, it should return the negative ones. Otherwise (if the amount of positives and negatives is the same) return nil.

# The second method takes a set of numbers. Then, it should return an array with four values:
# 1. The mode
# 2. The median
# 3. The mean
# 4. The size of the array
# In the event that the array we pass is empty, it should just return nil.

# The third and final method will take a positive integer (let's call it "n") as a parameter, and return the n-th Fibonacci number. If the
# parameter is zero or less, it should just return nil. More info: http://en.wikipedia.org/wiki/Fibonacci_number

# Your goal is to follow these three steps:
# 1. Quickly write a first implementation of the three methods.
# 2. Write a nice set of tests for each method.
# 3. Once the test pass, refactor your methods so they are perfect (so perfect that even Ruby creator would see them with joy and pride!)

class Numermaster
  
  def pos_neg(array)
    pos = array.select {|num| num > 0 }
    neg = array.select {|num| num < 0 }
    if pos.count > neg.count
      pos
    elsif neg.count > pos.count
      neg
    else pos.count = neg.count
      nil
    end
  end
  
  def averages(array)
    [mean, medium, mode, size]
  end
  
  def size
    size = array.size
  end
  
  def mean(array = nil)
    mean = array.inject() {|sum, num| sum + num}/ size
  end
  
  def mode
    
  end
  
  
  
  def medium(array = nil) 
    sorted = array.sort!
    medium = if sorted.size.even?
      
  end 
#   
  # def fib_num(n)
#     
  # end  

end

master = Numermaster.new
@master.pos_neg[1, 2, 3, -4, -5, 6]
@master.averages[2, 4, 10, 11, 16]

# describe Numermaster do
  # before { @master = Numermaster.new }
# 
  # describe :pos_neg do
    # it "should return only positive values if the array contains mostly positive numbers" do
      # expect(@master.pos_neg[1, 2, 3, -4, -5, 6]).to eq([1, 2, 3, 6])
    # end
#     
    # describe :pos_neg do
    # it "should return only negative values if the array contains mostly negative numbers" do
      # expect(@master.pos_neg[1, 2, 3, -4, -5, -7, -8]).to eq([-4, -5, -7, -8])
    # end
#     
    # describe :pos_neg do
    # it "should return nil if the number of positve values equals the number of negative values" do
      # expect(@master.pos_neg[1, 2, 3, -4, -5, -7]).to eq(nil)
    # end
  # end
    
    
    # describe :method2 do
      # it "should return an array of mean, medium, mode and size"
      # expect(@master.averages).to include(mean, medium, mode, size)
    # end
#     
    # describe :method2 do
      # it "should return an nil if array is empty"
      # expect(@master.averages([])).to eq(nil)
    # end
#     
    # describe :fib_num do
      # it "should return the n-th Fibonacci number"
      # expect(@master.fib_num(5)).to eq(3)
    # end
#     
    # describe :fib_num do
      # it "should return nil"
      # expect(@master.fib_num(0)).to eq(nil)
    # end
#  
 
#end
    
