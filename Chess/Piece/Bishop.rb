require_relative "Piece"

class Bishop < Piece
    
    def symbol(color)
        @symbol = "♗".colorize(color)
    end
    

    def move_dirs
        
    end
end
