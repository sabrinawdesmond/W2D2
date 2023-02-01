require_relative "Piece"
require_relative "slideable"

class Queen < Piece
include slideable

    def symbol(color)
        @symbol = "♕".colorize(color)
    end

    
    
    protected

    def move_dirs
    HORIZONTAL_DIRS + DIAGONAL_DIRS    
    end
end
