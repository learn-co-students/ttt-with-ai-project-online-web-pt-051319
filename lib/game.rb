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
      if board.cells[combo[0]] == "X" && board.cells[combo[1]] == "X" && board.cells[combo[2]] == "X" || board.cells[combo[0]] == "O" && board.cells[combo[1]] == "O" && board.cells[combo[2]] == "O"
        return combo 
      end
    end
    false 
  end

  def draw?
    self.won? == false && self.board.full? == true
  end  
  
  def over?
    case
    when self.draw? || self.won? == true
      return true
    when self.board.full? == false && self.won? == false
      return false
    end
    true  
  end

  def winner
    if self.won?
      return self.board.cells[self.won?[0]]
    else
      return nil
    end  
  end
  
  def turn
    @board.cells.display
    player = self.current_player
    move_1 = player.move(@board)
    
    if @board.valid_move?(move_1) == true && @board.taken?(move_1) == false
      @board.update(move_1, player)
      @board.cells.display
      
    else 
      puts "invalid"
      player.move(@board)
    end   
  end
  
  def play
  end  

end  