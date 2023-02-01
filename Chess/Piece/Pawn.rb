require_relative "Piece"
class Pawn < Piece
    def symbol(color)
        @symbol = "♙".colorize(color)
    end
    

    def move_dirs
        
    end
end