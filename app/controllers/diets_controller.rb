class DietsController < ApplicationController

    def index
        @diets = Diet.all
        render json: @diets
    end

    def show
        @diet = Diet.find(params[:id])
        render json: @diet
    end

    def new
        @diet = Diet.new
        render json: @diet
    end

    def edit
        @diet = Diet.find(params[:id])
        render json: @diet
    end

    def create
        @diet = Diet.create(diet_params)
        render json: @diet
    end

    def update
        @diet = Diet.find(params[:id])
        @diet.update(diet_params)
        render json: @diet
    end

    def destroy
        @diet = Diet.find(params[:id])
        @diet.destroy
        render json: @diet
    end

    private

    def diet_params
        params.permit(:name, :description, :image)
    end

end
