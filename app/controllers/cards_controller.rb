class CardsController < ApplicationController
  before_action :set_list
  before_action :set_card, only: [:edit, :update, :destroy]

  def new
    @cards = @list.cards.new
  end

  def create
    @list.cards.create_card(cards_params, @list.id)
    redirect_to board_path(@list.board_id)
  end

  def edit
  end

  def update
    Task.update_card(@card.id, card_params)
    redirect_to board_path(@list.board_id)
  end

  def destroy
      @board = Board.find(@list.board_id)
      @task.destroy
      redirect_to board_list_path(@board, @list)
  end
end

  private
    def set_card
      @card = Card.single_card(params[:id])
    end

    def set_list
      @list = List.single_list(params[:list_id])
    end

    def card_params
      params.require(:card).permit(:title, :description,)
    end

end
