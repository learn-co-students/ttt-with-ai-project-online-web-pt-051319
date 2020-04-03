require_relative "../player.rb"


class Players
	class Human < Player

		def move(board)
			puts "Make your move!"
			 move = gets.strip
		end

	end

end