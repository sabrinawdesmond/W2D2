class Piece
    require_relative "Board"

    def initialize(color, board, position)
        @color = symbol
        @board = Board
        @position = []
    end

    def to_s
    
    end

    def empty?
    
    end

    def valid_moves
    
    end

    def pos=(value)
    
    end

    def symbol
    
    end

    def move_into_check?(end_pos)
    
    end



end

class Queen < Piece
    def symbol_wh
        @symbol = ♕
    end
    
    def symbol_blk
        @symbol = ♛
    end

    def move_dirs
        
    end
end

class King < Piece

    def symbol_wh
    @symbol = ♔
    end

    def symbol_blk
    @symbol = ♚
    end

    def move_dirs
    
    end
end

class Rook < Piece
    def symbol_wh
        @symbol = ♖
    end
    
    def symbol_blk
        @symbol = ♜
    end

    def move_dirs
        
    end
end

class Bishop < Piece
    def symbol_wh
        @symbol = ♗
    end
    
    def symbol_blk
        @symbol = ♝
    end

    def move_dirs
        
    end
end

class Knight < Piece
    def symbol_wh
        @symbol = ♘
    end
    
    def symbol_blk
        @symbol = ♞
    end

    def move_dirs
        
    end
end

class Pawn < Piece
    def symbol_wh
        @symbol = ♙
    end
    
    def symbol_blk
        @symbol = ♟
    end

    def move_dirs
        
    end
end

class NullPiece < Piece
    
end


