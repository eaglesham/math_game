require './player'

class Question
    attr_reader :question
    
    def initialize    
        @question = "What does #{1 + rand(9)} plus #{1 + rand(9)} equal?"
    end


end

q1 = Question.new

puts q1.question