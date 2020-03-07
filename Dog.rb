class Dog
    def initialize (breed, name)

        #now we need instance variables
        @breed = breed
        @name = name
    end
    
    def bark
        puts 'Ruff!'
    end

    def display
        puts "I am of #{@breed} breed and my name is #{@name}"
    end
end
#make an object
#Objects are created on the heap
d = Dog.new('Labrador', "Benzy")

=begin
=end
# puts d.methods.sort

#Amongst these many methods, the methods object_id and respond_to? are important.
# Every object in Ruby has a unique id number associated with it
put "The id of d is #{d.object_id}."
