class Controller

  def initialize(args={})
    @parser = args.fecth(:parser)
    @view = args.fetch(:view)
    @deck = args.fetch(:deck)
  end

  def create_deck
    @deck.populate_deck(@parser.card_arr)
  end

  def full_deck
    @full_deck = @deck.full_deck
  end

  def total_questions
    @total_questions = @full_deck.length
  end

  def run

    create_deck
    correct_count = 0
    @full_deck.each do |card|
      @view.print_question(card.question)
      answer = @view.get_user_info
        if answer == card.answer
          @view.correct_answer(card.answer)
          correct_count += 1
        else
          @view.wrong_answer(answer)
        end
      end
    @view.display_final_count(correct_count, @total_questions )
  end

end

# runner = Controller.new({parser: CardParser.new(file), view: View.new, deck: Deck.new})

# runner.create_deck
