require_relative "./Piece.rb"
require_relative "./slideable.rb"

class Queen < Piece
include Slideable

    def symbol(color)
        @symbol = "♕".colorize(color)
    end

    def to_s
        "♕"
    end

    
    
    protected

    def move_dirs
    horizontal_dirs + diagonal_dirs    
    end
end
