class Api::UsersController < ApplicationController
    def create
        @user = User.new(user_params)
        if @user.save
          render json: @user, status: :created
        else
          render json: @user.errors.full_messages, status: 422
        end
    end


    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def index
        @users = User.all
        render json: @users
    end


    private


    def user_params
        params.require(:user).permit(:user_id, :name, :password)
    end

end