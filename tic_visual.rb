class TicVisual
	def initialize
		@one = " "
		@two = " "
		@three = " "
		@four = " "
		@five = " "
		@six = " "
		@seven = " "
		@eight = " "
		@nine = " "
	end

	def add(index, symbol)
			@one = symbol if index == 1 
			@two = symbol if index == 2
			@three = symbol if index == 3
			@four = symbol if index == 4
			@five = symbol if index == 5
			@six = symbol if index == 6
			@seven = symbol if index == 7
			@eight = symbol if index == 8
			@nine = symbol if index == 9
	end

	def one
		@one
	end
	def two
		@two
	end
	def three
		@three
	end
	def four
		@four
	end
	def five
		@five
	end
	def six
		@six
	end
	def seven
		@seven
	end
	def eight
		@eight
	end
	def nine
		@nine
	end
end

