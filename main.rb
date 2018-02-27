require './player.rb'
require './question.rb'

class Game 
    attr_reader :new_question
    def initialize
        @player1 = Player.new(1)
        @player2 = Player.new(2)
        @current_player = @player1
    end

    def new_question
        new_question  = Question.new((1 + rand(9)), (1 + rand(9)))
        puts "#{@current_player.name}: #{new_question.question}"
        print ">"
        @answer = new_question.sum
        @user_answer = $stdin.gets.chomp
    end
    
    def change_player
     
        if @current_player == @player1
            @current_player = @player2
        else
            @current_player = @player1
        end
       
    end

    def check_answer
        if (@answer.to_i == @user_answer.to_i)
            puts "Damn right! You know this shit!"
        else
            @current_player.lives -=1
            puts "Woops!" 
        end
    end
    
    def display_score
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
        $stdin.gets.chomp
    end

    def next_turn
        if !@player1.game_over && !@player2.game_over
            puts '----- NEW TURN -----' 
        elsif @player1.game_over
            puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
            puts '----- GAME OVER -----'
        elsif @player2.game_over
            puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
            puts '----- GAME OVER -----'
        end
    end

    def start
        while !@player1.game_over && !@player2.game_over
            self.new_question
            self.check_answer
            self.display_score
            self.change_player
            self.next_turn
        end
    end 
  
end

game = Game.new
game.start