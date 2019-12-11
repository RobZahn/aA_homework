class Simon
    COLORS = %w(red blue green yellow)

    attr_accessor :sequence_length, :game_over, :seq

    def initialize
        @sequence_length = 1
        @game_over = false
        @seq = []
    end
    
    def add_random_color
        seq << COLORS.sample
    end
    
    def take_turn
        self.show_sequence
        self.require_sequence

        unless game_over
            self.round_success_message
            @sequence_length += 1
        end

    end

    def play
        until game_over
            self.take_turn
        end

        if game_over
            self.game_over_message
            self.reset_game
        end
    end


    def show_sequence
        add_random_color
    end

    def require_sequence
        puts "Repeat after me:"
        user_seq = gets.chomp
        #@game_over = true unless each consecutive color of user_seq matches seq
    end


    def round_success_message
        puts "Correct"
    end

    def game_over_message
        puts "Game Over!"
    end

    def reset_game
        @sequence_length = 1
        @game_over = false
        @seq = []
    end
end
