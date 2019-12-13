# Big O-ctopus and Biggest Fish
# A Very Hungry Octopus wants to eat the longest fish in an array of fish.

# ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

# Sluggish Octopus
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to all other fish lengths

def biggest_fish(fishies)
    fishies.each_with_index do |fish1, idx1|
        sorted = true

        fishies.each_with_index do |fish2, idx2|
            sorted = false if idx2 > idx1 && fish2.length > fish1.length
        end

        return fish1 if sorted
    end
end

# Dominant Octopus
# Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm that runs in O(n log n) in the Sorting Complexity Demo. Remember that Big O is classified by the dominant term.


class Array

    def merge_sort(&prc)
        prc ||= Proc.new { |x, y| x <=> y }

        return self if count <= 1

        middle = count / 2
        sorted_left = self.take(middle).merge_sort(&prc)
        sorted_right = self.drop(middle).merge_sort(&prc)

        Array.merge(sorted_left, sorted_right, &prc)
    end

    private
    
    def self.merge(left, right, &prc)
        merged = []

        until left.empty? || right.empty?
            case prc.call(left.first, right.first)
                when -1
                    merged << left.shift
                when 0
                    merged << left.shift
                when 1
                    merged << right.shift
            end
        end

        merged + left + right

    end
end





# Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the longest fish that you have found so far while stepping through the array only once.

# Dancing Octopus
# Full of fish, the Octopus attempts Dance Dance Revolution. The game has tiles in the following directions:

# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
# To play the game, the octopus must step on a tile with her corresponding tentacle. We can assume that the octopus's eight tentacles are numbered and correspond to the tile direction indices.

# Slow Dance
# Given a tile direction, iterate through a tiles array to return the tentacle number (tile index) the octopus must move. This should take O(n) time.

# slow_dance("up", tiles_array)
# > 0

# slow_dance("right-down", tiles_array)
# > 3
# Constant Dance!
# Now that the octopus is warmed up, let's help her dance faster. Use a different data structure and write a new function so that you can access the tentacle number in O(1) time.

# fast_dance("up", new_tiles_data_structure)
# > 0

# fast_dance("right-down", new_tiles_data_structure)
# > 3