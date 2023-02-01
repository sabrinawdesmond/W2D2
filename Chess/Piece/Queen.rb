require_relative "Piece"
class Queen < Piece
    def initialize(pos, symbol)
        # row, col = pos
        # @grid[0][3] = @symbol
    end
    def symbol(color)
        @symbol = "♕".colorize(color)
    end
    
    def move_dirs
        
    end
end
