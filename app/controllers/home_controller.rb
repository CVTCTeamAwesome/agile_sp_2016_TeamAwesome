class HomeController < ApplicationController
  def index
  end

  def display
  @selectedDeck = params[:deck_select]
  end
end
