class HomeController < ApplicationController
  respond_to :html, :js
  
  def index
    @decks = Deck.where("slug is not null")
    @decksTopTen = Deck.where("slug is not null", :order => "updated_at DESC", :limit => 10 )
  end

  def display
    @selectedDeck = Deck.find(params[:id])
    @selectedDeckCards = @selectedDeck.cards.where(visible: true).shuffle
  end
  
end
