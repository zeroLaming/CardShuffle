class WelcomeController < ApplicationController
  def index
    @deck = CardShuffle::Deck.new
  end
end