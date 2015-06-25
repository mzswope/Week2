class Calculator
  attr_accessor :num1, :num2

    def num?
      if !num1.is_a?(Numeric) && !num2.is_a?(Numeric)
        num1 = 0
        num2 = 0
      elsif !num1.is_a?(Numeric)
          num1 = 0
      elsif !num2.is_a?(Numeric)
        num2 = 0
      end 
    end
  
    def add(num1, num2)
      num?
      num1 + num2
    end
  
   def subtract
      num?   
      num1 - num2
   end
  
    def multiply
    num?
        num1 * num2
    end
  
    def divide
      num?
      num1 / num2
    end
  
end

operation = Calculator.new


# print "Testing with a sum: "
# operation.num_one = 2
# operation.num_two = 2
# if operation.add == 4
  # print 'OK'
# else
  # print 'FAIL'
# end
# print "\n"
# 
# print "Testing with subtraction: "
# operation.num_one = 2
# operation.num_two = 2
# if operation.subtract == 0
  # print 'OK'
# else
  # print 'FAIL'
# end
# print "\n"
# 
# print "Testing with multiplication: "
# operation.num_one = 2
# operation.num_two = 2
# if operation.multiply == 4
  # print 'OK'
# else
  # print 'FAIL'
# end
# print "\n"
# 
# print "Testing with division: "
# operation.num_one = 2
# operation.num_two = 2
# if operation.divide == 1
  # print 'OK'
# else
  # print 'FAIL'
# end
# print "\n"
# 
# print "Testing with empty num1 add: "
# operation.num_one = []
# operation.num_two = 2
# if operation.add == 2
  # print 'OK'
# else
  # print 'FAIL'
# end
# print "\n"
# 
# print "Testing with empty num1 sub: "
# operation.num_one = []
# operation.num_two = 2
# if operation.subtract == -2
  # print 'OK'
# else
  # print 'FAIL'
# end
# print "\n"
# 
# print "Testing with empty num1 multipy: "
# operation.num_one = :cat
# operation.num_two = 2
# if operation.multiply == 0
  # print 'OK'
# else
  # print 'FAIL'
# end
# print "\n"
# 
# print "Testing with empty num1 divide: "
# operation.num_one = ""
# operation.num_two = 2
# if operation.divide == 0
  # print 'OK'
# else
  # print 'FAIL'
# end
# print "\n"

# SL8b. The calculator, reloaded

# Just take the calculator you implemented, but use RSpec!
class Calculator
  attr_accessor :num1, :num2

  
    def add (num1,num2)
      num1 = 0 unless num1.is_a?(Numeric)
      num2 = 0 unless num2.is_a?(Numeric)
      num1 + num2
    end
  
   def subtract (num1,num2)
      num1 = 0 unless num1.is_a?(Numeric)
      num2 = 0 unless num2.is_a?(Numeric) 
      num1 - num2
   end
  
    def multiply (num1,num2)
    num1 = 0 unless num1.is_a?(Numeric)
      num2 = 0 unless num2.is_a?(Numeric)
        num1 * num2
    end
  
    def divide (num1,num2)
      num1 = 0 unless num1.is_a?(Numeric)
      num2 = 0 unless num2.is_a?(Numeric)

      if num2 === 0
        return "Error!"
      end
      num1 / num2
    end
    
    end

describe Calculator do
  before do
    @operation = Calculator.new
  end

  describe "Random stuff other than numbers" do
    it "should work with no numbers" do
      expect(@operation.add(nil,:cat)).to eq(0)
    end
  end

  describe "Testing with positive and negative numbers (add sub)" do
    it "should sum with negative numbers" do
      expect(@operation.add(2,-1)).to eq(1)
    end 

    it "should work with negative numbers" do
      expect(@operation.subtract(-2,-2)).to eq(0)
    end
  end

  describe "Testing divisions" do
    it "should work with zeros" do
      expect(@operation.divide(2,0)).to eq("Error!")
    end
    it "should work with negative numbers" do
      expect(@operation.divide(2,-2)).to eq(-1)
    end
  end

  describe "Multiplications" do
    it "should return multiplitacion of both numbers" do 
      expect(@operation.multiply(2,-2)).to eq(-4)
    end
  end


end


