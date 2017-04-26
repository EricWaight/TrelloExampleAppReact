class StatusesController < ApplicationController

      def index
        @statuses = Status.all
    end

    def show
        @status = Status.find(params[:id])
    end

    def new 
        @status = Status.new
    end 

    def edit 
        @board = Board.find(params[:board_id])
        @status = Status.find(params[:id])
    end 

    def create
        @board = Board.find(params[:board_id])
        @status = Status.new(status_params)
 
        if @status.save
            redirect_to @status
        else 
            render 'new'
        end 
    end

    def update
        @board = Board.find(params[:board_id])
        @status = Status.find(params[:id])
 
        if @status.update(status_params)
            redirect_to @status
        else
            render 'edit'
        end
    end

    private
    def status_params
        params.require(:status).permit(:title, :description)
    end
end
