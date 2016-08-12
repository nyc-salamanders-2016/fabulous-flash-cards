require_relative 'cards'
require_relative 'parser'
require_relative 'deck'
require_relative 'controller'
require_relative 'view'

if ARGV.any?
  if ARGV[0].include?('raccoon')
    runner = Controller.new({parser: CardParser.new('raccoon_flashcard_data.txt'), view: View.new, deck: Deck.new})
  elsif ARGV[0].include?('otter')
    runner = Controller.new({parser: CardParser.new('otter_flashcard_data.txt'), view: View.new, deck: Deck.new})
  elsif ARGV[0].include?('nighthawk')
    runner = Controller.new({parser: CardParser.new('nighthawk_flashcard_data.txt'), view: View.new, deck: Deck.new})
  end
  runner.run
end
