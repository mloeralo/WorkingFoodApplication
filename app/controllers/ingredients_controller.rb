class IngredientsController < ApplicationController
  def index
    @ingredients=Ingredient.all
    @favorites= Favorite.all
    @search_term = params[:looking_for] || 'cheese'
    @recipes = Recipe.for(@search_term)
  end
end
