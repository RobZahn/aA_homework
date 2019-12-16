class LRUCache
    def initialize
        @cache = []
    end

    def count
        @cache.count
    end

    def add(el)
        if @cache.include?(el)
            @cache.delete(el)
            push(el)
        elsif
            count >= @cache.length
            @cache.shift
            push(el)
        else
            push(el)
        end
    end

    def show
        p @cache
    end

    private
    
    def push(el)
        @cache.push(el)
    end
end