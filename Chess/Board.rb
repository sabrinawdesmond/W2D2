require_relative "Piece"
class Board

  def initialize
    @grid = Array.new(8) { Array.new(8, " ") }
    @null_piece = null_piece
    @grid[0][3] = Queen.new("black")
    @grid[7][3] = Queen.new("white")
    @grid[0][4] = King.new("black")
    @grid[7][4] = King.new("white")
    @grid[0][2] = Bishop.new("black")
    @grid[0][5] = Bishop.new("black")
    @grid[7][2] = Bishop.new("white")
    @grid[7][5] = Bishop.new("white")
    @grid[0][1] = Knight.new("black")
    @grid[0][6] = Knight.new("black")
    @grid[7][1] = Knight.new("white")
    @grid[7][6] = Knight.new("white")
    @grid[0][0] = Rook.new("black")
    @grid[0][7] = Rook.new("black")
    @grid[7][0] = Rook.new("white")
    @grid[7][7] = Rook.new("white")
    @grid[1][0] = Pawn.new("black") 
    @grid[1][1] = Pawn.new("black") 
    @grid[1][2] = Pawn.new("black") 
    @grid[1][3] = Pawn.new("black") 
    @grid[1][4] = Pawn.new("black") 
    @grid[1][5] = Pawn.new("black") 
    @grid[1][6] = Pawn.new("black") 
    @grid[1][7] = Pawn.new("black") 
    @grid[6][0] = Pawn.new("white")
    @grid[6][1] = Pawn.new("white")
    @grid[6][2] = Pawn.new("white")
    @grid[6][3] = Pawn.new("white")
    @grid[6][4] = Pawn.new("white")
    @grid[6][5] = Pawn.new("white")
    @grid[6][6] = Pawn.new("white")
    @grid[6][7] = Pawn.new("white")
    
  end
    
    def render 
      @grid.each do |row|
        p row
      end
    end
    
    def [](pos)
      row, col = pos
      @grid[row][col]
    end

    def []=(pos, value)
      row, col = pos
      @grid[row][col] = value
    end

    def move_piece(color, start_pos, end_pos)
      if valid_pos?(start_pos)
        self[start_pos] = color
      else
        raise "there is no piece at start position"
      end
      if valid_pos?(end_pos)
        self[end_pos] = color
      else
        raise "the piece cannot move to end position"
      end
    end

    def valid_pos?(pos)
      row, col = position
      if (row >= 0 && row  <= 7 ) && (col >= 0 && col  <= 7) 
        true
      end
      false
      raise "Position doesn't exist!!!"
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

    def move_piece!(color, start_pos, end_pos)
    end

    private

    attr_reader :null_piece
end
