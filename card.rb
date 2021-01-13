class Card
  attr_reader :suit, :rank
  attr_accessor :revealed

  # Card Suits
  SUITS = {
    club: :club,
    spade: :spade,
    heart: :heart,
    diamond: :diamond,
  }.freeze

  RANKS = {
    ace: :ace,
    two: :two,
    three: :three,
    four: :four,
    five: :five,
    six: :six,
    seven: :seven,
    eight: :eight,
    nine: :nine,
    ten: :ten,
    king: :king,
    queen: :queen,
    jack: :jack,
  }.freeze

  VALUES = {
    ace: 1,
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9,
    ten: 10,
    king: 10,
    queen: 10,
    jack: 10,
  }.freeze

  COLORS = {
    black: :black,
    red: :red,
  }.freeze

  def initialize(rank, suit, revealed = false)
    @rank = rank
    @suit = suit
    @revealed = revealed
  end

  def value
    VALUES[rank]
  end

  def color
    if suit == SUITS[:heart] || suit == SUITS[:diamond]
      COLORS[:red]
    else
      COLORS[:black]
    end
  end

  def revealed?
    revealed
  end

  def reveal
    self.revealed = true
  end

  def unreveal
    self.revealed = false
  end

  def toggle_reveal
    self.reveal = !revealed?
  end
end
