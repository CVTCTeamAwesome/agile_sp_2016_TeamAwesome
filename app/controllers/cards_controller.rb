class CardsController < ApplicationController
  before_action :set_deck
  before_action :set_card, only: [:show, :edit, :update, :destroy]

  # GET /decks
  # GET /decks.json
  def index
    @cards = @deck.cards.all
  end

  # GET /cards/1
  # GET /cards/1.json
  def show
  end

  # GET /cards/new
  def new
    #@card = @deck.cards.new   # Use this if we don't want default values for new cards
    @card = @deck.cards.build(background_color: "#FFFFFF", name: "Card") #Default values in new card
  end

  # GET /cards/1/edit
  def edit 
  end

  # POST /cards
  # POST /cards.json
  def create
     @card = @deck.cards.build(card_params)

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
        format.html { redirect_to deck_cards_path(@deck, @card), notice: 'Card was successfully updated.' }
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
      format.html { redirect_to deck_cards_path(@deck), notice: 'Card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  
  def set_deck
    @deck = Deck.find(params[:deck_id])
  end
  
    # Use callbacks to share common setup or constraints between actions.
  
  def set_card
    @card = @deck.cards.find(params[:id])
  end
  
  # Never trust parameters from the scary internet, only allow the white list through.
  def card_params
    params.require(:card).permit(:visible, :name, :question_text, :answer_text, :background_color, :foreground_color, :font_size, :font_style, :picure)
  end
end
