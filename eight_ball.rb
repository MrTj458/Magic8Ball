require_relative 'answer_controller.rb'

class EightBall
  def initialize
   @answer_controller = AnswerController.new
  end 

  def start
    @answer_controller.def_ans
    while true
      get_input
    end
  end

  def get_input
    puts 'Enter a question'
    user_input = gets.chomp
    process_user_input(user_input)
  end

  def process_user_input(user_input)
    case user_input
    when 'QUIT'
      puts 'Goodbye'
      exit  

    when 'add_answer'
      add_answer

    when 'reset_answers'
      reset_answers

    when 'print_answers'
      print_answers

    else
      get_random_answer
    end
  end

  def add_answer
    puts 'what is your answer?'
    user_input = gets.chomp
    @answer_controller.add_ans(user_input)
    puts 'answer added'
  end

  def reset_answers
    @answer_controller.clear_ans
    @answer_controller.def_ans
    puts 'Answers reset'
  end

  def print_answers
    @answer_controller.print_ans

  end

  def get_random_answer
    puts @answer_controller.get_rand.answer
  end

end