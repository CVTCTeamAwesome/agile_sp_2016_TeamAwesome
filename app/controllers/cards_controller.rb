class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]

  # GET /decks
  # GET /decks.json
  def index
    @deck = Deck.find(params[:deck_id])
    @cards = @deck.cards.all
  end

  # GET /cards/1
  # GET /cards/1.json
  def show
    @deck = Deck.find(params[:deck_id])
    @card = @deck.cards.find(params[:id])
  end

  # GET /cards/new
  def new
    @deck = Deck.find(params[:deck_id])
    @card = @deck.cards.new
  end

  # GET /cards/1/edit
  def edit
    @deck = Deck.find(params[:deck_id])
    @card = @deck.cards.find(params[:id])
  end

  # POST /cards
  # POST /cards.json
  def create
    @deck = Deck.find(params[:deck_id])
    @card = @deck.cards.new(card_params)

    respond_to do |format|
      if @card.save
        format.html { redirect_to deck_card_path(@deck, @card), notice: 'Card was successfully created.' }
#        format.json { render :show, status: :created, location: @card }
      else
        format.html { render :new }
#        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cards/1
  # PATCH/PUT /cards/1.json
  def update
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to @card, notice: 'Card was successfully updated.' }
        format.json { render :show, status: :ok, location: @card }
      else
        format.html { render :edit }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cards/1
  # DELETE /cards/1.json
  def destroy
    @card.destroy
    respond_to do |format|
      format.html { redirect_to deck_cards_path(@deck, @card), notice: 'Card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_card
    @deck = Deck.find(params[:deck_id])
    @card = @deck.cards.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def card_params
    params.require(:card).permit(:visible)
  end
end
