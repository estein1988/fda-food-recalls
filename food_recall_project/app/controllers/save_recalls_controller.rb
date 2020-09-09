class SaveRecallsController < ApplicationController
    def index
        @save_recalls = SaveRecall.all
        render json: @save_recalls, include: [:recall, :user]
    end

    def show
        @save_recall = SaveRecall.find(params[:id])
        render json: @save_recall, include: [:recall, :user]
    end

    def create
        @save_recall = SaveRecall.create(
            user_id: params[:user_id],
            recall_id: params[:recall_id]
        )
        redirect_to 'http://localhost:3001'
    end

end