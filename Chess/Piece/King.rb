require_relative "Piece"
class King < Piece

    def symbol(color)
    @symbol = "♔".colorize(color)
    end

    def to_s
        "♔"
    end

    def move_dirs
    
    end
end