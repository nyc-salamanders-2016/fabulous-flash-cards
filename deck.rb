require 'pry'

class Deck
  attr_reader :full_deck

  def initialize
    @full_deck = []
  end

  def populate_deck(array_of_card_objects)
    # binding.pry
    array_of_card_objects.each do |card|
      @full_deck << card
    end
    # binding.pry
    @full_deck

  end

end
