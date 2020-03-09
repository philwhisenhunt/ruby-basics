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
#Every object is born with certain innate abilities.
#To see a list of innate methods, you can call the methods and throw in a sort operations
#to make it easier to browse visually
=end
puts d.methods.sort

#Amongst these many methods, the methods object_id and respond_to? are important.
# Every object in Ruby has a unique id number associated with it
puts "The id of d is #{d.object_id}."

if d.respond_to?("talk")
    d.talk
else
    puts "sorry, d doesn't understand the 'talk' message."
end

d.bark
d.display

#point them to the same object
d1 = d
d.display
# making d a nil reference, meaning it does not refer to anything
d =nil
d.display

d1 = nil
#abandons the Dog object and eligable for GC (garbage collection-)