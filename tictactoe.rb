require_relative 'tic_board'

puts "Welcome to tic tac toe!"

turn = "T"
filled_spaces = 0

game_board = TicBoard.new

while true
	

	#say which player's turn it is
	if turn == "T"
		puts "It's player 1's turn! Please choose a location for x:"

		filled_spaces = game_board.add_x(gets.strip.to_i, filled_spaces)
	else
		puts "It's player 2's turn! Please choose a location for o:"
		filled_spaces = game_board.add_o(gets.strip.to_i, filled_spaces)
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
	turn = turn.swapcase
	game_board.draw_board
end

puts "Thanks for playing!"