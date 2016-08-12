require_relative 'deck'

class View

  # def pull_card(card, total_questions)
  #   right_answers = 0
  #   puts card.question
  #   STDIN.gets.chomp

  #     if STDIN == card.answer
  #       puts "Correct"
  #       @right_answers+=1
  #     else
  #       puts "Wrong"
  #     end
  #   puts "You got #{right_answers} out of #{total_questions} right."
  # end

def print_question(question)
  puts "#{question}"
end

def correct_answer(correct_answer)
   puts "#{correct_answer} is correct!!!"
end


def wrong_answer(user_input)
  puts "#{user_input} is incorrect!!!"
end

def get_user_input
  STDIN.gets.chomp
end
