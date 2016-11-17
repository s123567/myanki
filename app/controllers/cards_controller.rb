class CardsController < ApplicationController
  require 'will_paginate/array' 
  before_action :find_card, only:[:edit, :destroy, :show, :update]

  def new
    @card = Card.new
    @cards = current_user.cards

  end

  def create
    @card = Card.new(card_params)
    @card.user = current_user
    if @card.save
      flash[:success] = "Carte créée"
      redirect_to cards_path
    else
      render 'new'
    end
  end

  def index
    if params[:tag]
      @cards = current_user.cards.tagged_with(params[:tag]).paginate(page: params[:page], per_page: 10)
      else
        @cards = current_user.cards.paginate(page: params[:page], per_page: 10)
    end
    @cards_total = current_user.cards
  end


  def test_index
    @cards_total = current_user.cards
    @cards = current_user.cards
    if params[:tag]
      @cards = current_user.cards.tagged_with(params[:tag])
      @cards = @cards.paginate
    end

  end

  def test_tag

    @cards = current_user.cards.tagged_with(params[:tag]).paginate(page: params[:page], per_page: 1)
    @card = @cards.sample

    if params[:page].nil?
      @count = 1
    else
      @count = params[:page]
    end

  end

  def test_frequence

    @cards = current_user.cards.paginate(page: params[:page], per_page: 3)
    if params[:filter]
    @cards = current_user.cards.select { |card| card[:frequence] == params[:filter] }
    @cards = @cards.paginate(page: params[:page], per_page: 3)
  end
    @card = @cards.sample

    if params[:page].nil?
      @count = 1
    else
      @count = params[:page]
    end

  end


  def test
    if params[:tag]
      @cards = current_user.cards.tagged_with(params[:tag])
    else
      @cards = current_user.cards.paginate(page: params[:page], per_page: 1)
      @card = @cards.sample  
    end
  end

  def show

  end

  def edit
    @cards = current_user.cards
    
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
