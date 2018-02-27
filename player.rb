class Player
    attr_reader :name
    attr_accessor :turn
    
    def initialize(num)
        @name = "Player #{num}:"
        @lives = 3
        @turn = if num == 1
                    true
                else
                    false
                end
    end

    def lose_life
        if !self.game_over?
            @lives -= 1
        end

        @lives
    end

    def game_over
        if self.lives == 0
            return true
        end
        return false
    end

end

