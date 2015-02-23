require 'spec_helper'
require 'card_shuffle/deck'

module CardShuffle
  describe 'Deck' do

    context 'an initialized deck' do
      let(:deck) { Deck.new }

      it 'should be in order' do
        expect(deck.cards[0].rank).to eq('10')
        expect(deck.cards[0].suit).to eq('Club')
      end

      it "should know it isn't shuffled" do
        expect(deck.shuffled?).to eq(false)
      end
    end

    context 'shuffling the deck' do
      let(:deck) { Deck.new }
      before do
        deck.shuffle
      end

      it 'should know it is shuffled' do
        expect(deck.shuffled?).to eq(true)
      end
    end

  end
end