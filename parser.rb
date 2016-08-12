class CardParser

  def initialize(file)
    @file = file
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

end
