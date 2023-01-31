class Board
    require_relative "Piece"

    def initialize
        @grid = Array.new(8){Array.new(8,[])}
        @null_piece = null_piece
    end
   
    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos,value)
        row, col = pos
        @grid[row][col] = value
    end

    def move_piece(color, start_pos, end_pos)
        
    end

    def valid_pos?(pos)
    
    end
    
    def add_piece(piece, pos)
        
    end

    def checkmate?(color)
    
    end

    def in_check?(color)
    
    end

    def find_king(color)
    
    end

    def pieces
    
    end

    def dup
    
    end

    def def move_piece!(color, start_pos, end_pos)

    end

    

    private 
    attr_reader :null_piece
end