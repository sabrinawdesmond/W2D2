require_relative "Board"

module Slideable

    # attr_reader :HORIZONTAL_DIRS , :DIAGONAL_DIRS 
    HORIZONTAL_DIRS = [
        [-1,0],
        [0,-1],
        [1,0],
        [0,1]
].freeze 
    end

    DIAGONAL_DIRS = [
        [-1,-1]
        [-1,1]
        [1,1]
        [1,-1]
].freeze
    end

    
end