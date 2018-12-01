class RecipesController < ApplicationController
  #this is going to be the primary controller
  def index
    @search_term = params[:looking_for] || 'cheese'
    @recipes = Recipe.for(@search_term)
    @ingredients=Ingredient.joins("JOIN fridges ON fridges.ingredient_id = ingredients.id")
    @favorites= Favorite.all
  end
end
