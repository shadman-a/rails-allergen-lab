class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.create(recipe_params)

        redirect_to recipe_path
    end
    
    private

    def recipe_params
        params.require(:recipe).permit(:title, :user_id)
    end
      
end
