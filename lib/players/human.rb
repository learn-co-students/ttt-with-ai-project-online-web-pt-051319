require 'pry'
module Players
  class Human < Player

    def move(board)
      reply = gets.chomp
      return reply
    end  

  end
end    