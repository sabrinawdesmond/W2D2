require_relative "Piece"
require_relative "Slideable"
class Bishop < Piece

include Slideable

    def symbol(color)
        @symbol = "♗".colorize(color)
    end
    
    def to_s
        "♗"
    end

    def move_dirs
        diagonal_dirs
    end
end
