Class Taco
    def initialize(shell, filling)
        @shell = shell
        @filling = filling
    end

    def combine
        puts "Now combining the two items"
        if @shell.nil?
            puts "you don't have enough ingredients"
        else
            puts "Combined!"
    end

    def devour
        puts "Eating taco..."
    end

    def assembleModified
        puts "Making special taco"
    end

    def consume
        puts "Taco is being eaten"
    end
    

end

