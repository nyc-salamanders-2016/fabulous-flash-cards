
require_relative 'parser'

class Deck

  def initialize(array_of_card_objects)
    @cards = array_of_card_objects
    @full_deck = []
  end

  def populate_deck
    @cards.each do |card|
      @full_deck << card
    end
    @full_deck
  end

end

parser = CardParser.new('raccoon_flashcard_data.txt')
# parser.card_arr
deck = Deck.new(parser.card_arr)
p deck.populate_deck

