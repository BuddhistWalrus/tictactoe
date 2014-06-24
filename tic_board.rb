class TicBoard 

	#init with full board, solutions, and location arrays
	def initialize
		@board = [{0 => 0}, {1 => 0}, {2 => 0}, {3 => 0}, {4 => 0}, {5 => 0}, {6 => 0}, {7 => 0}, {8 => 0}]
		@x = 1
		@o = 2
		@solutions = [[0,1,2][0,3,6][0,4,8][1,4,7][2,5,8][2,4,6][3,4,5][6,7,8]]
		@x_location = []
		@o_location = []
	end

	#add x to someplace on the board and record the location
	def add_x(index)
		@board.each do |key, value|
			if key == index
				value = @x
				@x_location << key
			end
		end
	end

	#add o to someplace on the board and record the location
	def add_o(index)
		@board.each do |key, value|
			if key == index
				value = @o
				@o_location << key
			end
		end
	end

	#loop through every possible solution and use array subtraction to determine the winner
	def determine_winner
		@solutions.each do |solution|

			if ((solution - @x_location) == [])
				return "X Wins!"
			
			elsif ((solution - @o_location) == [])
				return "O Wins!"

			else
				return "Draw!"

			end
		end
	end


