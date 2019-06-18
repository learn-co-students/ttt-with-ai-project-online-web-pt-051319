require 'pry'
module Players
  class Computer < Player

    def move(board)
      # binding.pry
      case
      when board.taken?(5) == false
        return "5"
      when board.taken?(2) && board.cells[1] == @token && board.taken?(5) && board.cells[4] == @token && !board.taken?(8)
        return "8"
      when board.taken?(5) && board.cells[4] == @token && board.taken?(6) && board.cells[5] == @token && !board.taken?(4)
        return "4"
      when board.taken?(5) && board.cells[4] == @token && board.taken?(8) && board.cells[7] == @token && !board.taken?(2)
        return "2"
      when board.taken?(5) && board.cells[4] == @token && board.taken?(4) && board.cells[3] == @token && !board.taken?(6)
        return "6"
      when board.taken?(5) && board.cells[4] == @token && board.taken?(1) && board.cells[0] == @token && !board.taken?(9)
        return "9"
      when board.taken?(5) && board.cells[4] == @token && board.taken?(3) && board.cells[2] == @token && !board.taken?(7)
        return "7"
      when board.taken?(5) && board.cells[4] == @token && board.taken?(7) && board.cells[6] == @token && !board.taken?(3)
        return "3"
      when board.taken?(5) && board.cells[4] == @token && board.taken?(9) && board.cells[8] == @token && !board.taken?(1)
        return "1"       
      when board.taken?(1) && board.cells[0] == @token && board.taken?(2) && board.cells[1] == @token && !board.taken?(3)
        return "3"
      when board.taken?(7) && board.cells[6] == @token && board.taken?(8) && board.cells[7] == @token && !board.taken?(9)
        return "9"
      when board.taken?(2) && board.cells[1] == @token && board.taken?(3) && board.cells[2] == @token && !board.taken?(1)
        return "1"
      when board.taken?(8) && board.cells[7] == @token && board.taken?(9) && board.cells[8] == @token && !board.taken?(7)
        return "7"
      when board.taken?(1) && board.cells[0] == @token && board.taken?(4) && board.cells[3] == @token && !board.taken?(7)
        return "7"
      when board.taken?(7) && board.cells[6] == @token && board.taken?(4) && board.cells[3] == @token && !board.taken?(1)
        return "1"
      when board.taken?(1) && board.cells[0] == @token && board.taken?(7) && board.cells[6] == @token && !board.taken?(4)
        return "4"
      when board.taken?(1) && board.cells[0] == @token && board.taken?(3) && board.cells[2] == @token && !board.taken?(2)
        return "2"
      when board.taken?(3) && board.cells[2] == @token && board.taken?(9) && board.cells[8] == @token && !board.taken?(6)
        return "6"
      when board.taken?(7) && board.cells[6] == @token && board.taken?(9) && board.cells[8] == @token && !board.taken?(8)
        return "8"

      when board.taken?(2) && board.cells[1] != @token && board.taken?(5) && board.cells[4] != @token && !board.taken?(8)
        return "8"
      when board.taken?(5) && board.cells[4] != @token && board.taken?(6) && board.cells[5] != @token && !board.taken?(4)
        return "4"
      when board.taken?(5) && board.cells[4] != @token && board.taken?(8) && board.cells[7] != @token && !board.taken?(2)
        return "2"
      when board.taken?(5) && board.cells[4] != @token && board.taken?(4) && board.cells[3] != @token && !board.taken?(6)
        return "6"
      when board.taken?(5) && board.cells[4] != @token && board.taken?(1) && board.cells[0] != @token && !board.taken?(9)
        return "9"
      when board.taken?(5) && board.cells[4] != @token && board.taken?(3) && board.cells[2] != @token && !board.taken?(7)
        return "7"
      when board.taken?(5) && board.cells[4] != @token && board.taken?(7) && board.cells[6] != @token && !board.taken?(3)
        return "3"
      when board.taken?(5) && board.cells[4] != @token && board.taken?(9) && board.cells[8] != @token && !board.taken?(1)
        return "1"       
      when board.taken?(1) && board.cells[0] != @token && board.taken?(2) && board.cells[1] != @token && !board.taken?(3)
        return "3"
      when board.taken?(7) && board.cells[6] != @token && board.taken?(8) && board.cells[7] != @token && !board.taken?(9)
        return "9"
      when board.taken?(2) && board.cells[1] != @token && board.taken?(3) && board.cells[2] != @token && !board.taken?(1)
        return "1"
      when board.taken?(8) && board.cells[7] != @token && board.taken?(9) && board.cells[8] != @token && !board.taken?(7)
        return "7"
      when board.taken?(1) && board.cells[0] != @token && board.taken?(4) && board.cells[3] != @token && !board.taken?(7)
        return "7"
      when board.taken?(7) && board.cells[6] != @token && board.taken?(4) && board.cells[3] != @token && !board.taken?(1)
        return "1"
      when board.taken?(1) && board.cells[0] != @token && board.taken?(7) && board.cells[6] != @token && !board.taken?(4)
        return "4"
      when board.taken?(1) && board.cells[0] != @token && board.taken?(3) && board.cells[2] != @token && !board.taken?(2)
        return "2"
      when board.taken?(3) && board.cells[2] != @token && board.taken?(9) && board.cells[8] != @token && !board.taken?(6)
        return "6"
      when board.taken?(7) && board.cells[6] != @token && board.taken?(9) && board.cells[8] != @token && !board.taken?(8)
        return "8"

      when board.taken?(1) == false
        return "1"
      when board.taken?(3) == false
        return "3"
      when board.taken?(7) == false
        return "7"
      when board.taken?(9) == false
        return "9"
      when board.taken?(2) == false
        return "2"
      when board.taken?(4) == false
        return "4"
      when board.taken?(6) == false
        return "6"
      when board.taken?(8) == false
        return "8"                                        
      end  
    end  

  end
end    