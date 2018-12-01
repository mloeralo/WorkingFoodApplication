class IngredientsController < ApplicationController
  def index
    # @ingredients=Ingredient.all

    @ingredients=Ingredient.joins("JOIN fridges ON fridges.ingredient_id = ingredients.id")


    @favorites= Favorite.all
    @search_term = params[:looking_for] || 'cheese'
    @recipes = Recipe.for(@search_term)



  end
end
