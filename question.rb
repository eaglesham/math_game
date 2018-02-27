class Question
    attr_reader :question, :sum
    
    def initialize(num1, num2)  
        @sum = num1 + num2
        @question = "What does #{num1} plus #{num2} equal?"
    end
    

end

