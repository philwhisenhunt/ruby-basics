#anything after this symbol on the same line will be a comment

class MegaGreeter
    attr_accessor :names

    # Create the object
    def initialize(names = "World")
        @names = names
    end

    #say hi to everyone
    def say_hi
        if @names.nil?
            puts "..."
        else if @names.respond_to("each")
            # @names is a list of some kind, iterate!
            @names.each do |name|