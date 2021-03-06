class DecksController < ApplicationController
  before_action :authenticate_user!
  before_action :get_categories
  before_action :set_deck, only: [:show, :edit, :update, :destroy, :share, :unshare]

  # GET /decks
  # GET /decks.json
  def index
    @decks = current_user.decks.all
  end

  # GET /decks/1
  # GET /decks/1.json
  def show
    @cards = @deck.cards.all
  end

  # GET /decks/new
  def new
    @deck = current_user.decks.build
  end

  # GET /decks/1/edit
  def edit
  end

  # POST /decks
  # POST /decks.json
  def create
    @deck = current_user.decks.new(deck_params)
    @deck.creation_date = DateTime.current
    @deck.last_modified = DateTime.current
    
    respond_to do |format|
      if @deck.save
        format.html { redirect_to decks_url, notice: 'Deck was successfully created.' }
        format.json { render :show, status: :created, location: @deck }
      else
        format.html { render :new }
        format.json { render json: @deck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /decks/1
  # PATCH/PUT /decks/1.json
  def update
     @deck.last_modified = DateTime.current
    respond_to do |format|
      if @deck.update(deck_params)
        format.html { redirect_to decks_url, notice: 'Deck was successfully updated.' }
        format.json { render :show, status: :ok, location: @deck }
      else
        format.html { render :edit }
        format.json { render json: @deck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /decks/1
  # DELETE /decks/1.json
  def destroy
    @deck.destroy
    respond_to do |format|
      format.html { redirect_to decks_url, notice: 'Deck was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def share
    if @deck.description? && @deck.category_id?
      respond_to do |format|
        @deck.share
        if @deck.save
          format.html { redirect_to edit_deck_path(@deck), notice: 'Deck was successfully shared.' }
          format.json { render :show, status: :ok, location: @deck }
        else
          format.html { render :edit }
          format.json { render json: @deck.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to edit_deck_path(@deck), alert: 'Deck must have a description and a category assigned to be shared.'
    end
  end
  
  def unshare
    respond_to do |format|
      @deck.unshare
      if @deck.save
        format.html { redirect_to edit_deck_path(@deck), notice: 'Deck was successfully unshared.' }
        format.json { render :show, status: :ok, location: @deck }
      else
        format.html { render :edit }
        format.json { render json: @deck.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_deck
      @deck = Deck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deck_params
      params.require(:deck).permit(:title, :description, :category_id, :creation_date, :last_modified, :user_id)
    end
  
    def get_categories
      @categories = Category.all.collect{|c| [c.name, c.id] }
    end
end
