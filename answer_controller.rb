require_relative 'answer'

# This class keeps track of answers
class AnswerController
    
    # Starts woth an empty array
    def initialize
        @answers = []
    end

    # Adds some answers to the array
    # This is a seperate method so if we don't want
    # default answers we don't have to have them
    def def_ans
        @answers << Answer.new('I don\'t know...')
        @answers << Answer.new('Of Course!!!')
        @answers << Answer.new('What do I look like.. A magic 8 Ball???')
        @answers << Answer.new('You tell me....')
        @answers << Answer.new('Extremely Likely... Not...')
    end

    # Creates an answer and adds it to the running list of answers
    def add_ans(ans)
        @answers << Answer.new(ans)
    end

    # Returns a random answer from the list of answers
    # This returns the actual object not a string
    def get_rand
       return @answers[@answers.length * rand]
    end

    # Removes all answers from the @answers array
    def clear_ans
       @answers.clear
    end

    # Puts (prints) all of the answers in the @answers array to the terminal
    def print_ans
       # answer.answer because the first is the object the second is the string in the object
       @answers.each { |answer| puts answer.answer }
    end
end

