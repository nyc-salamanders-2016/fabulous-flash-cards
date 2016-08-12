
require 'cards'

class Deck



  def intialize(array_of_card_objects)
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
