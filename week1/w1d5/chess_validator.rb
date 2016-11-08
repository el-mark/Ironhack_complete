require 'pry'

class Piece
	attr_reader :code, :posible_moves, :place, :color
	def initialize code, posible_moves, place
		@code = code
		@posible_moves = posible_moves
		@place = place
		@color = []
	end
end
class Pawn < Piece

end

class ChessValidator
	def initialize
		Loadboard.new "simple_board.txt"
	end
end

class Loadboard 
	def initialize filename
		@filename = filename
		read_text
	end
	def read_text
		@lines_input = IO.readlines @filename
		@board_input = @lines_input.map do |line|
		 	line.split
		end
		load_pieces
	end
	def load_pieces
		x = -1
		board = @board_input.map do |line_input|
			x = x + 1
			y = -1
			line = line_input.map do |piece|
				y = y + 1
				if piece[1] == "P"
			 		Piece.new piece, "Only move forward.", [x,y]
			 	elsif piece[1] == "N"
			 		Piece.new piece, "Move only in an L-shape.", [x,y]
			 	elsif piece[1] == "R"
			 		Piece.new piece, "Any number of squares, up and down and side to side.", [x,y]
			 	elsif piece[1] == "B"
			 		Piece.new piece, "Any number of squares diagonally.", [x,y]
			 	elsif piece[1] == "Q"
			 		Piece.new piece, "On line moves, idefinite number of places", [x,y]
			 	elsif piece[1] == "K"
			 		Piece.new piece, "All directions, One place at a time", [x,y]
			 	elsif piece[1] == "-"
			 		Piece.new piece, "No moves available.", [x,y]
			 	else	
			 	"Something is wrong"
			 	end
			end 
			line.each do |piece|	
				if piece.code[0] == "b"
					piece.color << "Black"
				else
					piece.color << "White"
				end
			
		 	end
		end
	binding.pry
	end
end

play = ChessValidator.new
