 # require_relative 'cards'

class CardParser
# attr_reader :card_arr

  def initialize(file)
    @file = file
  end

  def card_arr
    if @card_arr
      @card_arr
    else
      @card_arr = create_card_array
    end
  end

  def parse_data
    file_arr = []
    File.open(@file).readlines.each do |line|
      if line != "\n"
        file_arr << line
      end
    end
    card_arr = []
    file_arr.each_index do |i|
      if i.even?
        card_arr << {question:file_arr[i], answer: file_arr[i+1]}
      end
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

# parser = CardParser.new('raccoon_flashcard_data.txt')
# p parser.card_arr



