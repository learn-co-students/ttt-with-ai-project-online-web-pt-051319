require 'pry'
class Game
  attr_accessor :board, :player_1, :player_2

  WIN_COMBINATIONS = [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]
  
  def initialize(player1=Players::Human.new("X"), player2=Players::Human.new("O"), board=Board.new)
    @player_1 = player1
    @player_2 = player2
    @board = board
  end  

  def board
    @board
  end

  def current_player
    # binding.pry
    x = @board.turn_count
    case
    when x.even?
      return @player_1
    when x.odd?
      return @player_2
    end  
  end
  
  def won?
    
    WIN_COMBINATIONS.each do |combo|
      # binding.pry
      if board.cells[combo[0]] && board.cells[combo[1]] && board.cells[combo[2]] == "X" || board.cells[combo[0]] && board.cells[combo[1]] && board.cells[combo[2]] == "O"
        return combo
      else
        false   
      end
    end 
  end   
  
end  