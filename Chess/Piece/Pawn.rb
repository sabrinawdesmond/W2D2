require_relative "Piece"
class Pawn < Piece
    def symbol(color)
        @symbol = "♙".colorize(color)
    end

    def at_start_row?
        
    end
    
    def side_aatacks
        
    end

    def move_dirs
       pawn_moves =  [[-1,0]
        ].freeze

        pawn_capture = [[-1,1],
        [1,1]].freeze
    end
end