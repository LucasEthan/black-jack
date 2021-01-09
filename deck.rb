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
  end

  def draw
  end

  def peek
  end

  def split
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
