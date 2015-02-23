class WelcomeController < ApplicationController
  before_action :set_deck

  def index
  end

  def shuffle
    @deck.shuffle
  end

  private

  def set_deck
    @deck = CardShuffle::Deck.new
  end
end