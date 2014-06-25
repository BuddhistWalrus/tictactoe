class TicBoard 

	#init with full board, solutions, and location arrays
	def initialize
		@board = [{1 => 0}, {2 => 0}, {3 => 0}, {4 => 0}, {5 => 0}, {6 => 0}, {7 => 0}, {8 => 0}, {9 => 0}]
		@x = 1
		@o = 2

		#all possible solutions 
		@solutions = [[1,2,3],[1,4,7],[1,5,9],[2,5,8],[3,6,9],[3,5,7],[4,5,6],[7,8,9]]

		#arrays to hold the locations of placed x's and o's
		@x_location = []
		@o_location = []
	end

	#add x to someplace on the board and record the location
	def add_x(index, spaces)
		if index > 0 && index <=9
			@board.each do |place|
				place.each do |key, value|
					
					if key == index
						place[key] = @x
						if !(@o_location.include?(index) || @x_location.include?(index))
							@x_location << index
							spaces += 1
						else
							puts "Invalid move!"
						end
					end
				end
			end
		else
			puts "Invalid move!"
		end
		spaces
	end

	def x_location
		@x_location
	end

	def o_location
		@o_location
	end

	#add o to someplace on the board and record the location
	def add_o(index, spaces)
		if index > 0 && index <=9
			@board.each do |place|
				place.each do |key, value|
				
					if key == index
						place[key] = @o
						if !(@x_location.include?(index) || @o_location.include?(index))
							@o_location << index
							spaces += 1
						else 
							puts "Invalid move!"
						end
					end
				end
			end
		else
			puts "Invalid move!"
		end
		spaces
	end

	#loop through every possible solution and use array subtraction to determine the winner
	def determine_winner(spaces)

		@solutions.each do |solution|

			
			if ((solution - @x_location) == [])
				return "X Wins!"
			
			elsif ((solution - @o_location) == [])
				return "O Wins!"

			elsif spaces == 9
				return "Draw!"
				
			end
		end
		return nil
	end

	#def draw_board
		#@board.each do |place|
			#place.each do |key, value|

				#puts "#{value}|#{value}|#{value}\n\n"
			#end
		#end
	#end

end
