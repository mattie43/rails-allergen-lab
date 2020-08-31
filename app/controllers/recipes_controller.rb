class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def new
        @recipe = Recipe.new
    end

    def create
        recipe = Recipe.create(recipe_params)
        redirect_to recipes_path
    end

    def edit
    end

    def update
        @recipe = Recipe.find(params[:id])
    end

    def destroy
        @recipe = Recipe.find(params[:id]).destroy
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :user_id)
    end
    
end
