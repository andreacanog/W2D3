class HumanPlayer
    attr_reader :mark

    def initialize(mark_value)
        @mark = mark_value 
    end

    def get_position
        puts "Player enter the position as two numbers with a space between them"
        pos = gets.chomp
        position = pos.split(" ").map { |num| num.to_i}

        if position.length != 2 
            raise "error"
        end

        position
    end
end

