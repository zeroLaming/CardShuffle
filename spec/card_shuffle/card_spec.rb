require 'spec_helper'
require 'card_shuffle/card'

module CardShuffle
  describe 'Card' do

    context 'first card in the pack' do
      let(:card) { Card.new(0) }

      it 'has a rank' do
        expect(card.rank).to eq('2')
      end

      it 'has a suit' do
        expect(card.suit).to eq('Spade')
      end
    end

    context 'last card in the pack' do
      let(:card) { Card.new(51) }

      it 'has a rank' do
        expect(card.rank).to eq('A')
      end

      it 'has a suit' do
        expect(card.suit).to eq('Diamond')
      end
    end

  end
end