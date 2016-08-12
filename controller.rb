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
    @full_deck.each do |card|
      @view.#display question(card)
      @view.#get user input
      @view.#say if it's right
      @view.#
    end
    @view.#display number of questions correct out of total
  end

end

runner = Controller.new({parser: CardParser.new(file), view: View.new, deck: Deck.new})

runner.create_deck
