class RecipesController < ApplicationController

    def index
        @recipes = Recipe.order(:name)
        render json: @recipes
    end

    def show
        @recipe = Recipe.find(params[:id])
        render json: @recipe
    end

    def new
        @recipe = Recipe.new
        render json: @recipe
    end

    def edit
        @recipe = Recipe.find(params[:id])
        render json: @recipe
    end

    def create
        @recipe = Recipe.create(recipe_params)
        render json: @recipe
    end

    def update
        @recipe = Recipe.find(params[:id])
        @recipe.update(recipe_params)
        render json: @recipe
    end

    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy
        render json: @recipe
    end

    private

    def recipe_params
        params.permit(:name, :image, :ingrediants, :instructions, :breakfast, :lunch, :dinner, :snack, :dessert)
    end
end
