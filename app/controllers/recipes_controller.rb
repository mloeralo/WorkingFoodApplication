class RecipesController < ApplicationController
  #this is going to be the primary controller
  def index
   
    @ingredients=Ingredient.joins("JOIN fridges ON fridges.ingredient_id = ingredients.id")
    @search_term = params[:looking_for] ||  @ingredients[0].ing_name
    @recipes = Recipe.for(@search_term)
    @favorites= Favorite.all
  end
end
