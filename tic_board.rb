class TicBoard 

	#init with full board, solutions, and location arrays
	def initialize
		@board = [{0 => 0}, {1 => 0}, {2 => 0}, {3 => 0}, {4 => 0}, {5 => 0}, {6 => 0}, {7 => 0}, {8 => 0}]
		@x = 1
		@o = 2

		#all possible solutions 
		@solutions = [[0,1,2],[0,3,6],[0,4,8],[1,4,7],[2,5,8],[2,4,6],[3,4,5],[6,7,8]]

		#arrays to hold the locations of placed x's and o's
		@x_location = []
		@o_location = []
	end

	#add x to someplace on the board and record the location
	def add_x(index)
	
		@board.each do |place|
			place.each do |key, value|
				
				if key == index
					value = @x
					@x_location << index
				end
			end
		end
	end

	def x_location
		@x_location
	end

	def o_location
		@o_location
	end

	#add o to someplace on the board and record the location
	def add_o(index)
		
		@board.each do |place|
			place.each do |key, value|
			
				if key == index
					value = @o
					@o_location << index
				end
			end
		end
	end

	#loop through every possible solution and use array subtraction to determine the winner
	def determine_winner(turns)
		@solutions.each do |solution|

			if ((solution - @x_location) == [])
				return "X Wins!"
			
			elsif ((solution - @o_location) == [])
				return "O Wins!"

			elsif turns == 9
				return "Draw!"

			else
				return nil
			end
		end
	end
end
