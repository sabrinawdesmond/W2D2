require_relative "Piece"
require_relative "slideable"

class Rook < Piece
    include slideable
    def symbol
        @symbol = "♖".colorize(color)
    end
    
    def move_dirs
        HORIZONTAL_DIRS
    end
end
