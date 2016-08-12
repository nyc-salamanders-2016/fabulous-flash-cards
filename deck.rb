class Deck
  attr_reader :full_deck

  def initialize
    @full_deck = []
  end

  def populate_deck(array_of_card_objects)
    array_of_card_objects.each do |card|
      @full_deck << card
    end
    @full_deck
  end

end

# parser = CardParser.new('raccoon_flashcard_data.txt')
# # parser.card_arr
# deck = Deck.new(parser.card_arr)
# p deck.populate_deck

