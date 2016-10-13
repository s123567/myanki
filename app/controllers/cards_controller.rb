class CardsController < ApplicationController
  require 'will_paginate/array' 
  before_action :find_card, only:[:edit, :destroy, :show, :update]

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
    if params[:tag]
      @cards = Card.tagged_with(params[:tag])
      else
        @cards = Card.all
    end
  end

  def test_index
    @cards = Card.all.paginate(page: params[:page], per_page: 5)
    if params[:tag]
      @cards = Card.tagged_with(params[:tag])
      @cards = @cards.paginate(page: params[:page], per_page: 5)
    end
  end

  def test_tag
    @cards = Card.tagged_with(params[:tag]).paginate(page: params[:page], per_page: 1)
    @card = @cards.sample
  end

  def test_frequence
    @cards = Card.all.paginate(page: params[:page], per_page: 1)
    if params[:filter]
    @cards = Card.select { |card| card[:frequence] == params[:filter] }
    @cards = @cards.paginate(page: params[:page], per_page: 1)
  end
    @card = @cards.sample
  end


  def test
    if params[:tag]
      @cards = Card.tagged_with(params[:tag])
    else
      @cards = Card.paginate(page: params[:page], per_page: 1)
      @card = @cards.sample  
    end
  end

  def show

  end

  def edit
    
  end

  def update
    if @card.update_attributes(card_params)
      redirect_to cards_path
    else
      render 'edit'
    end
  end

  def destroy
    @card.destroy
    redirect_to :back
    
  end

  private

  def card_params
    params.require(:card).permit(:question, :answer, :frequence, :tag_list, :picture)
  end

  def find_card
    @card = Card.find(params[:id])
  end

end
