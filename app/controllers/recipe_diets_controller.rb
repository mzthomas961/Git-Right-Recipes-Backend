class RecipeDietsController < ApplicationController

    def index
        @recipediets = RecipeDiet.order(:name)
        render json: @recipediets
    end

    def show
        @recipediet = RecipeDiet.find(params[:id])
        render json: @recipediet
    end

    def new
        @recipediet = RecipeDiet.new
        render json: @recipediet
    end

    def edit
        @recipediet = RecipeDiet.find(params[:id])
        render json: @recipediet
    end

    def create
        @recipediet = RecipeDiet.create(recipe_diet_params)
        render json: @recipediet
    end

    def update
        @recipediet = RecipeDiet.find(params[:id])
        @recipediet.update(recipe_diet_params)
        render json: @recipediet
    end

    def destroy
        @recipediet = RecipeDiet.find(params[:id])
        @recipediet.destroy
        render json: @recipediet
    end

    private

    def recipe_diet_params
        params.permit(:recipe_id, :diet_id )
    end
end
