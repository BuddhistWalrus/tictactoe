require_relative 'tic_board'
require_relative 'tic_visual'
puts "Welcome to tic tac toe!"

turn = "T"
filled_spaces = 0
pre_filled_spaces = filled_spaces
swap = false 
game_board = TicBoard.new
visual = TicVisual.new
while true
	swap = false

	#say which player's turn it is
	if turn == "T"
		puts "It's player 1's turn! Please choose a location for x:"

		filled_spaces = game_board.add_x(gets.strip.to_i, filled_spaces, visual)
		if filled_spaces > pre_filled_spaces
			swap = true
		end
	else
		puts "It's player 2's turn! Please choose a location for o:"
		filled_spaces = game_board.add_o(gets.strip.to_i, filled_spaces, visual)
		if filled_spaces > pre_filled_spaces
			swap = true
		end
	end

	#check to see if a winner can be determined
	if filled_spaces >= 5

		if game_board.determine_winner(filled_spaces)
	
			puts game_board.determine_winner(filled_spaces)
			break
		end
	end

	#break if filled_spaces == 9

	#switch player's turn using swapcase
	if swap
		turn = turn.swapcase
	end


	game_board.draw_board(visual)
	pre_filled_spaces = filled_spaces
end

game_board.draw_board(visual)
puts "Thanks for playing!"