class UsersController < ApplicationController

    def index
        @users = User.order(:name)
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def new
        @user = User.new
        render json: @user
    end

    def edit
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.create(user_params)
        render json: @user
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: @user
    end

    private

    def user_params
        params.permit(:name, :password, :image)
    end
end



