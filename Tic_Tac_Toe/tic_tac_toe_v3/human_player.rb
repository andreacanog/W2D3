class HumanPlayer
    attr_reader :mark

    def initialize(mark_value)
        @mark = mark_value 
    end

    def get_position(legal_positions)
        position = nil
        until legal_positions.include?(position)
            puts "Player enter the position as two numbers with a space between them"
            position = gets.chomp.split(" ").map { |num| num.to_i}
                if !legal_positions.include?(position)
                    puts "not a legal position"
                end
                if position.length != 2
                    raise "error"
                end
        end    
    
        position
    end

    # def get_position(legal_positions)
    #     pos = nil
    #     until legal_positions.include?(pos)
    #         puts "Player #{mark.to_s}, enter two numbers representing a position in the format `row col`"
    #         pos = gets.chomp.split(' ').map(&:to_i)
    #         puts "#{pos} is not a legal position" if !legal_positions.include?(pos)
    #         raise 'sorry, that was invalid :(' if pos.length != 2
    #     end
    #     pos
    # end
end

