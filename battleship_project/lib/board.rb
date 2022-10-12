class Board

    def initialize(n)
        @grid = Array.new(n) {Array.new(n, :N)}
        @size = (n * n)
    end
  
    def size
        @size
    end

    def [](array)
    end
end
