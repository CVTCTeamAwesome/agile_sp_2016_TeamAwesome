class HomeController < ApplicationController
  respond_to :html, :js
  
  def index
    @decks = Deck.all
  end

  def display
    @deck = Deck.find(params[:id])
  end
  
  def render_partial_deck
    @selectedDeck = @deck
    @selectedDeckCards = @selectedDeck.cards.where(visible: true).shuffle
  end
  
end
