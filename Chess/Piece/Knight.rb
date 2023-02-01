require_relative "Piece"
require_relative "stepable"

class Knight < Piece
    
    include stepable
    
    def symbol(color)
        @symbol = "♘".colorize(color)
    end

    def move_dirs
        knight_moves = [
        [-2,-1],
        [-2,1],
        [-1,-2],
        [-1,2],
        [1,-2],
        [1,2],
        [2,-1],
        [2,1]
    ].freeze
    end
end
