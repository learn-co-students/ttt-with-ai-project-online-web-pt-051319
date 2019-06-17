require 'pry'
class Board
  attr_accessor :cells

  def initialize
    @cells = [" "," "," "," "," "," "," "," "," "]
  end  

  def reset!
    @cells = [" "," "," "," "," "," "," "," "," "]
  end
  
  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts " ----------- "
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  
  end
  
  def position(spot)
    @cells[spot.to_i-1]
  end
  
  def full?
    @cells.include?(" ") ? false : true 
  end
  
  def turn_count
    @cells.count("X") + @cells.count("O")
  end
  
  def taken?(spot)
    @cells[spot.to_i-1] == "X" || @cells[spot.to_i-1] == "O"
  end
  
  def valid_move?(spot)
    if spot.to_i.between?(1,9)
      self.position(spot) != "X" && self.position(spot) != "O"
    end
  end
  
  def update(spot, player)
    
  end  

end  