require 'pry'

class Board


	def initialize
		@cells  = []
		self.reset!
	end

	def cells=(cells)
		@cells = cells
	end

	def cells
		@cells
	end

	def reset!
		self.cells.clear
		9.times do
			self.cells.push(" ")
		end
	end

	def display
		# self.cells.each_with_index.reduce("") do |sum, (cell, i)|
		# 	if (i + 1) % 3 == 0
		# 		sum += " #{cell} \n-----------\n"
		# 	else
		# 		sum += " #{cell} |"
		# 	end
		# end.tap{ |board| puts board}


		self.cells.each_with_index.reduce("") do |sum, (cell, i)|
			sum += (i + 1) % 3 == 0 ? " #{cell} \n-----------\n" : " #{cell} |"
		end.tap{ |board| puts board}
	end

	def position(cell)
		self.cells[cell.to_i - 1]
	end

	def full?
		!self.cells.include?(" ")
	end

	def turn_count
		self.cells.count{ |cell| cell != " "}
	end

	def taken?(cell)
		!(self.position(cell) == " ")
	end

	def valid_move?(move)
		((move >= "1" && move <= "9") && !self.taken?(move))
	end

	def update(move, player)
		self.cells[move.to_i - 1] = player.token
	end

end