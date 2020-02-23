#anything after this symbol on the same line will be a comment

class MegaGreeter
    attr_accessor :names

    # Create the object
    def initialize(names = "World")
        @names = names
    end