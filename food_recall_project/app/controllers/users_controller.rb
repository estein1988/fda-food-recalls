class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users, include: [:save_recalls]
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include: [:save_recalls]
    end

    def create
        @user = User.create(
            username: params[:username],
            first_name: params[:first_name],
            last_name: params[:last_name]
        )
        redirect_to 'http://localhost:3001'
    end

end
