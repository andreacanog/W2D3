class Board
    def initialize
        @grid = Array.new(3) { Array.new(3, '_') }
    end

    def [](position)
        row, col = position
        @grid[row][col]
    end

    def []=(position, val)
        row, col = position
        @grid[row][col] = val
    end

    def valid?(position)
        row, col = position
        position.all? do |i|
            0 <= i && i < @grid.length
        end
    end

    def empty?(position)
        self[position] == "_"
    end


    def place_mark(position, mark)
        if !self.valid?(position) || !self.empty?(position)
            raise 'error' 
        end
        self[position] = mark
    end

    def print
        @grid.each do |row|
            puts row.join(' ')
        end
    end

    #-----------------------------------------------------

    def win_row?(mark)
        @grid.each do |row|
            row.each do |ele|
                if ele != mark
                    return false
                end
            end
        end

        return true 
    end
    
    # def win_row?(mark)
    #     @grid.any? { |row| row.all?(mark) }
    # end

    # def win_col?(mark)
    #     @grid.transpose.any? { |col| col.all?(mark) }
    # end



    def win_col?(mark)
        @grid.each do |subarr|
            if subarr[0] != mark
                return false
            end
        end
        
        return true 
    end

    def win_diagonal?(mark)
        left_to_right = (0...@grid.length).all? do |i|
            pos = [i, i]
            self[pos] == mark
        end

        right_to_left = (0...@grid.length).all? do |i|
            row = i
            col = @grid.length - 1 - i
            pos = [row, col]
            self[pos] == mark
        end

        left_to_right || right_to_left
    end


   def win?(mark) 
        if self.win_row?(mark) || self.win_col?(mark) || self.win_diagonal?(mark)
            return true
        else
            return false
        end
   end

   def empty_positions?
        @grid.each do |row| 
            row.any? { |ele| ele == "_" }
        end
   end

end
