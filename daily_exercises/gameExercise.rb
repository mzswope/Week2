class House
  
  attr_reader :direction, :north, :south, :east, :west
  
  def initiatize(direction)
      @direction = ["North", "South", "East", "West"]
  end  
end

class ConsequenceMenu
  
   def next_room
     puts "You just entered another room.  Which direction now?"
     @direction
     next_move = gets.chomp.downcase 
   end
   
   def hit_wall
     puts" Ooch!  Hitting that wall had to hurt.  Choose a less painful direction."
     @direction
     next_move = get.chomp.downcase
   end
   
   def window
     
     puts @window = "Deadly exit.  Game over!"
     exit
   end
   
   def exit_house
     puts "Congratulations! You are safe."
     exit
   end
end

class Room
  
  def first_room
    puts "You found yourself in this haunted house.  How will you get out?  You need to find the door that will lead you out.  
              Choose a direction (North, South, East or West) quickly."
      @direction
      your_move = gets.chomp.downcase
      case your_move
        when "east" then "#{@next_room}"
        when "south" then "#{@hit_wall}"
        when "north" then "#{@window}"
        when "west" then "#{@hit_wall}"
        else  "You need to enter one of the four directions.  North, South East or West"
       end
  end
  
  def second_room
    
    @direction
      your_move = gets.chomp.downcase
      case your_move
        when "east" then "#{@next_room}"
        when "south" then "#{@hit_wall}"
        when "north" then "#{@window}"
        when "west" then "#{@hit_wall}"
        else  "You need to enter one of the four directions.  North, South East or West"
       end
  end
end
   
room = Room.new
room.first_room 
room.second_room  
 

    