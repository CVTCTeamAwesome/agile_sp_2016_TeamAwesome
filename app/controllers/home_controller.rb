class HomeController < ApplicationController
  respond_to :html, :js
  
  def index
    @decks = Deck.all
  end

  def display
    @selectedDeck = Deck.find(params[:id])
    @selectedDeckCards = @selectedDeck.cards.where(visible: true).shuffle
  end
  
  def render_partial_deck
    @selectedDeckCards = @selectedDeck.cards.where(visible: true).shuffle
  end
  
end
