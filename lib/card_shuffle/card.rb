module CardShuffle
  class Card
    RANKS = %w( 2 3 4 5 6 7 8 9 10 J Q K A )
    SUITS = %w( Spade Heart Club Diamond )

    attr_accessor :rank, :suit

    def initialize(id)
      self.rank = RANKS[id % 13]
      self.suit = SUITS[id % 4]
    end
  end
end