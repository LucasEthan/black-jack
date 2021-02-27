class Card
  attr_reader :suit, :rank
  attr_accessor :revealed

  # Card Suits
  SUITS = {
    club: "\u2663",
    spade: "\u2660",
    heart: "\u2665",
    diamond: "\u2666",
  }.freeze

  RANKS = {
    ace: "A",
    two: "2",
    three: "3",
    four: "4",
    five: "5",
    six: "6",
    seven: "7",
    eight: "8",
    nine: "9",
    ten: "10",
    king: "K",
    queen: "Q",
    jack: "J",
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

  def print
    if revealed?
      puts RANKS[rank] + SUITS[suit]
    else
      puts "??"
    end
  end
end
