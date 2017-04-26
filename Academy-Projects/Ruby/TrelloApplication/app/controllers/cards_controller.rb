class CardsController < ApplicationController

    def index
        @cards = Card.all
    end

    def show
        @card = Card.find(params[:id])
    end

    def new 
        @card = Card.new
    end 

    def edit 
        @board = Board.find(params[:board_id])
        @status = Status.find(params[:status_id])
        @card = Card.find(params[:id])
    end 

    def create
        @board = Board.find(params[:board_id])
        @status = Status.find(params[:status_id])
        @card = Card.new(card_params)
 
        if @card.save
            redirect_to @card
        else 
            render 'new'
        end 
    end

    def update
        @board = Board.find(params[:board_id])
        @status = Status.find(params[:status_id])
        @card = Card.find(params[:id])
 
        if @card.update(card_params)
            redirect_to @card
        else
            render 'edit'
        end
    end

    private
    def card_params
        params.require(:card).permit(:description)
    end
end
