class SharedDecksController < ApplicationController
  
  # GET /show/:id
  def show
    @deck = Deck.find_by_slug(params[:id])
    if @deck
      render :show
    else
      render :notfound
    end
  end
end