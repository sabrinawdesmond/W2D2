require_relative "Piece"
class Rook < Piece
    def symbol
        @symbol = "♖".colorize(color)
    end
    
    def move_dirs
        
    end
end
