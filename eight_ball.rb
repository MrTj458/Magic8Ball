require_relative 'answer_controller.rb'

# Main controller for the program
class EightBall
  # Create an answer controller to controll answers
  def initialize
   @answer_controller = AnswerController.new
  end 

  # Start the 8 ball
  def start
    # Tell the answer controller to fill with the default answers
    @answer_controller.def_ans
    # Keep asking for questions forever
    while true
      get_input
    end
  end

  # Gets user input fro the terminal and gives it to the input processor
  def get_input
    puts 'Enter a question'
    user_input = gets.chomp
    process_user_input(user_input)
  end

  # Decide what to do depending on what the user entered
  def process_user_input(user_input)
    case user_input
    when 'QUIT'
      # Quit the program
      puts 'Goodbye'
      exit  

    when 'add_answer'
      add_answer

    when 'reset_answers'
      reset_answers

    when 'print_answers'
      print_answers

    else
      # User entered a question
      get_random_answer
    end
  end

  # Give the answer controller another answer to use
  def add_answer
    puts 'what is your answer?'
    user_input = gets.chomp
    @answer_controller.add_ans(user_input)
    puts 'answer added'
  end

  # Resets back to the drfault answers
  def reset_answers
    @answer_controller.clear_ans
    @answer_controller.def_ans
    puts 'Answers reset'
  end

  # Print all possible answers to the terminal
  def print_answers
    @answer_controller.print_ans

  end

  # Gets a random answer from the answer controller
  def get_random_answer
    puts @answer_controller.get_rand.answer
  end

end