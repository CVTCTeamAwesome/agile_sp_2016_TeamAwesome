class HomeController < ApplicationController
  respond_to :html, :js
  
  def index
    @decks = Deck.all
  end

  def display
    @decks = Deck.all
  end
  
  def render_partial_deck
    @selectedDeck = Deck.find(params[:deck_select])
    @selectedDeckCards = @selectedDeck.cards.where(visible: true).shuffle
  end
  
end
