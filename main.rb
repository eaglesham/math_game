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
        return "#{@current_player.name} #{new_question.question}"
    end
    
    def change_player
        if @current_player == @player1
            current_player = @player2
        end
        if @current_player = @player2
            current_player = @player1
        end
    end
  
end

ng = Game.new
puts ng.new_question