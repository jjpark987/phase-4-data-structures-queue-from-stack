require_relative './stack'

class MyQueue
    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def add value
        @s1.push value
    end

    def remove 
        transfer
        @s2.pop
    end

    def peek 
        transfer
        @s2.peek
    end

    private

    def transfer
        until @s1.empty?
            @s2.push @s1.pop
        end
    end
end
