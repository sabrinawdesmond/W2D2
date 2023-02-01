require_relative "./Piece/Queen.rb"
require_relative "./Piece/King.rb"
require_relative "./Piece/Bishop.rb"
require_relative "./Piece/Knight.rb"
require_relative "./Piece/Rook.rb"
require_relative "./Piece/Pawn.rb"
require_relative "./Piece/slideable.rb"
require_relative "./Piece/stepable.rb"
require_relative "./Piece/Piece.rb"
require_relative "./Piece/Null_piece.rb"

class Board

  def initialize
    @grid = Array.new(8) { Array.new(8, " ") }
    @null_piece = null_piece
    @grid[0][3] = Queen.new("black", self, [0,3])
    @grid[7][3] = Queen.new("white", self, [7,3])
    @grid[0][4] = King.new("black",self, [0,4])
    @grid[7][4] = King.new("white", self,[7,4])
    @grid[0][2] = Bishop.new("black",self,[0,2])
    @grid[0][5] = Bishop.new("black",self, [0,5])
    @grid[7][2] = Bishop.new("white",self,[7,2])
    @grid[7][5] = Bishop.new("white",self,[7,5])
    @grid[0][1] = Knight.new("black",self,[0,1])
    @grid[0][6] = Knight.new("black",self, [0,6])
    @grid[7][1] = Knight.new("white",self,[7,1])
    @grid[7][6] = Knight.new("white",self,[7,6])
    @grid[0][0] = Rook.new("black",self,[0,0])
    @grid[0][7] = Rook.new("black",self,[0,7])
    @grid[7][0] = Rook.new("white",self,[7,0])
    @grid[7][7] = Rook.new("white",self,[7,7])
    @grid[1][0] = Pawn.new("black",self,[1,0]) 
    @grid[1][1] = Pawn.new("black",self,[1,1]) 
    @grid[1][2] = Pawn.new("black",self,[1,2]) 
    @grid[1][3] = Pawn.new("black",self,[1,3]) 
    @grid[1][4] = Pawn.new("black",self,[1,4]) 
    @grid[1][5] = Pawn.new("black",self,[1,5]) 
    @grid[1][6] = Pawn.new("black",self,[1,6]) 
    @grid[1][7] = Pawn.new("black",self,[1,7]) 
    @grid[6][0] = Pawn.new("white",self,[6,0])
    @grid[6][1] = Pawn.new("white",self,[6,1])
    @grid[6][2] = Pawn.new("white",self,[6,2])
    @grid[6][3] = Pawn.new("white",self,[6,3])
    @grid[6][4] = Pawn.new("white",self,[6,4])
    @grid[6][5] = Pawn.new("white",self,[6,5])
    @grid[6][6] = Pawn.new("white",self,[6,6])
    @grid[6][7] = Pawn.new("white",self,[6,7])
    
  end
    
    def render 
      @grid.each do |row|
        puts row.join(' ')
      end
      return nil 
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
      if valid_pos?(end_pos)
        self[end_pos] = self[start_pos]
        self[start_pos] = nil

      else
        raise "the piece cannot move to end position"
        # if valid_pos?(start_pos)
        # else
        #   raise "there is no piece at start position"
        
      end
    end

    def valid_pos?(pos)
      row, col = pos
      if (row >= 0 && row  <= 7 ) && (col >= 0 && col <= 7) 
        return true
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
