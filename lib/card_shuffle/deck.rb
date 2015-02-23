module CardShuffle
  class Deck
    attr_accessor :cards

    def initialize
      self.cards = generate_cards
    end

    def shuffle
      self.cards.shuffle!
    end

    # The easiest way to see if the cards are shuffled is
    # to create a new deck, and compare. Comparing arrays of objects
    # doesn't work, so we need to organise into arrays instead.
    def shuffled?
      self.cards.collect {|c| [c.rank, c.suit] } !=
        generate_cards.collect{ |c| [c.rank, c.suit] }
    end

    private

    def generate_cards
      (0..51).to_a.collect { |id| Card.new(id) }
        .sort{ |a,b| [a.suit, a.rank] <=> [b.suit, b.rank] }
    end
  end
end