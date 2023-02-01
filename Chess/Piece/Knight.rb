require_relative "Piece"
class Knight < Piece
    def symbol(color)
        @symbol = "♘".colorize(color)
    end

    def move_dirs
        
    end
end
