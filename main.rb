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
        puts "#{@current_player.name} #{new_question.question}"
        print ">"
        @answer = new_question.sum
        @user_answer = $stdin.gets.chomp
    end
    
    def change_player
        if @current_player == @player1
            current_player = @player2
        end
        if @current_player = @player2
            current_player = @player1
        end
    end

    def check_answer
        if (@answer.to_i == @user_answer.to_i)
            puts "fuck ya"
        else
            puts "nahh" 
        end
    end


    def start
        self.new_question
        self.check_answer
    end 
  
end

game = Game.new
game.start