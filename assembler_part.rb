require 'assembler.rb'

class Assembler_part < Assembler

    def initialize(input1, input2) do
        puts "initializing"
    end

    def assembler(input1, input2) do
        assembled = input.combine(input1, input2)
    end
end

handle = Assembler_part.new