require_relative "Piece"
require_relative "stepable"

class Knight < Piece
    
    include Stepable
    
    def symbol(color)
        @symbol = "♘".colorize(color)
    end

    def to_s
        "♘"
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
