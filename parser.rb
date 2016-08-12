class CardParser

  # require_relative 'card'

  def initialize(file)
    @file = file
  end

  def card
    if @card_arr
      @card_arr
    else
      @card_arr = create_card_array
  end

  def parse_data
    file_arr = File.open(@file).readlines
    card_arr = []
    file_arr.each do |line|
      hash = {}
      hash[:question] = file_arr[0].slice(0..-2)
      hash[:answer] = file_arr[1].slice(0..-2)
      card_arr << hash
      3.times {file_arr.shift}
    end
    card_arr
  end

  def create_card_array
    card_arr = parse_data
    card_arr.map! do |card|
      card_instance = Card.new(card)
    end
  end
end



