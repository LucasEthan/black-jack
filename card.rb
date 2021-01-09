class Card
  attr_reader :suit, :rank
  attr_accessor :revealed

  # Card Suits
  SUITS = {
    spade: :spade,
    club: :club,
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

  COLORS = {
    black: :black,
    red: :red,
  }.freeze

  def initialize(suit, rank, revealed = false)
    @suit = suit
    @rank = rank
    @revealed = revealed
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
