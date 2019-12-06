class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack << el
    end

    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end
end

class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.unshift(el)
    end

    def dequeue
        @queue.pop
    end

    def peek
        @queue.last
    end
end

class Map
    def initialize
        @map = []
    end

    def set(key, val)
        @map << [key, val]
    end

    def get(key)
        @map.each {|pair| return pair[0] if pair[0] == key}
    end

    def delete(key)
        @map.each {|pair| pair.delete(key) if pair[0] == key}
    end
end



