class Deck
  require_relative "card"

  attr_reader :cards

  def initialize
    @cards = []
    Card::SUITS.each do |suit|
      Card::RANKS.each do |rank|
        card = Card.new(suit.first, rank.first)
        @cards << card
      end
    end
  end

  def shuffle_cards
    self.cards = cards.shuffle
  end

  def number_of_cards
    cards.length
  end

  def draw(number_of_cards = 1)
    cards.pop(number_of_cards)
  end

  def peek(number_of_cards = 1)
    cards.last(number_of_cards)
  end

  def split
    shuffle_cards
    cards.pop(cards.length / 2)
  end

  def add_cards_to_top
  end

  def add_cards_to_bottom
  end

  def add_cards_to_random_position
  end

  private

  attr_writer :cards
end
