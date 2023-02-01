class Board
  require_relative "Piece"

  def initialize
    @grid = Array.new(8) { Array.new(8, " ") }
    @null_piece = null_piece
    

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
end
