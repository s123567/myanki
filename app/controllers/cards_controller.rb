class CardsController < ApplicationController

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      flash[:success] = "Carte créée"
      redirect_to cards_path
    else
      render 'new'
      
    end
  end

  def index
    @cards = Card.all
  end

  def test
    @cards = Card.all
    @card = @cards.sample
  end

  def show
    @card = Card.find(params[:id])
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def card_params
    params.require(:card).permit(:question, :answer)
    
  end

end
