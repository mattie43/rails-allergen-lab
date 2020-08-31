class IngredientsController < ApplicationController

    def index
        temp = Ingredient.all
        @ingredients = temp.order(:allergy_count).reverse_order
    end

    def show
        @ingredient = Ingredient.find(params[:id])
    end
    
end
