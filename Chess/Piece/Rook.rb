require_relative "Piece"
require_relative "slideable"

class Rook < Piece
    include Slideable
    def symbol
        @symbol = "♖".colorize(color)
    end
    
    def to_s
        "♖"
    end

    def move_dirs
        horizontal_dirs
    end
end
