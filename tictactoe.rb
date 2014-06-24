require_relative 'tic_board.rb'

puts "Welcome to tic tac toe!"

turn = "T"
num_of_turns = 0

game_board = TicBoard.new

while true
	num_of_turns += 1

	#say which player's turn it is
	if turn == "T"
		puts "It's player 1's turn! Please choose a location for x:"
		game_board.add_x(gets.strip.to_i)
	else
		puts "It's player 2's turn! Please choose a location for o:"
		game_board.add_o(gets.strip.to_i)
	end

	#check to see if a winner can be determined
	if num_of_turns >= 5

		if game_board.determine_winner(num_of_turns)
	
			puts game_board.determine_winner(num_of_turns)
			break
		end
	end

	break if num_of_turns == 9

	#switch player's turn using swapcase
	turn = turn.swapcase
end

puts "Thanks for playing!"