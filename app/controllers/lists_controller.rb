class ListsController < ApplicationController
  def index
    @lists= List.new
  end

  def show
    @cards = @list.card.all
    @board = Board.find(params)[:board_id]
  end

  def new
    @list = List.new
  end

  def edit

  end

  def create 
    @list = List.new[list_params]
  end

end
