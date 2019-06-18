require 'pry'
module Players
  class Computer < Player

    def move(board)
      # binding.pry
      case
      when board.taken?(5) == false
        return "5"
      when board.taken?(1) == false
        return "1"
      when board.taken?(3) == false
        return "3"
      when board.taken?(7) == false
        return "7"
      when board.taken?(9) == false
        return "9"
      when board.taken?(2) && board.taken?(5)
        return "8"
      when board.taken?(5) && board.taken?(6)
        return "4"
      when board.taken?(5) && board.taken?(8)
        return "2"
      when board.taken?(5) && board.taken?(4)
        return "6"
      when board.taken?(5) && board.taken?(1)
        return "9"
      when board.taken?(5) && board.taken?(3)
        return "7"
      when board.taken?(5) && board.taken?(7)   
        return "3"
      when board.taken?(5) && board.taken?(9)
        return "1"       
      when board.taken?(1) && board.taken?(2)
        return "3"
      when board.taken?(7) && board.taken?(8)
        return "9"
      when board.taken?(2) && board.taken?(3)
        return "1"
      when board.taken?(8) && board.taken?(9)
        return "7"
      when board.taken?(1) && board.taken?(4)
        return "7"
      when board.taken?(7) && board.taken?(4)
        return "1"
      when board.taken?(1) && board.taken?(1)
        return "4"
      when board.taken?(1) && board.taken?(3)
        return "2"
      when board.taken?(1) && board.taken?(7)
        return "4"                              
      end  
    end  

  end
end    