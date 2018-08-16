require_relative 'answer'

class AnswerController
    
    def initialize
        @answers = []
    end

    def def_ans
        @answers << Answer.new('I don\'t know...')
        @answers << Answer.new('Of Course!!!')
        @answers << Answer.new('What do I look like.. A magic 8 Ball???')
        @answers << Answer.new('You tell me....')
        @answers << Answer.new('Extremely Likely... Not...')
    end

    def add_ans(ans)
        @answers << Answer.new(ans)
    end

    def get_rand
       return @answers[@answers.length * rand]
    end
end
