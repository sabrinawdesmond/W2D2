require_relative "Piece"
require_relative "Slideable"
class Bishop < Piece

include Slideable

    def symbol(color)
        @symbol = "♗".colorize(color)
    end
    

    def move_dirs
        DIAGONAL_DIRS
    end
end
