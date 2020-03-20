class Assembler
    def initialize (first, second)
        @first = first
        @second = second
    end
    
    def combine
        
        combined = @first + " and " + @second
        puts combined
    end