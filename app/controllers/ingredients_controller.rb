class IngredientsController < ApplicationController
  def index
    @ingredients=Ingredient.all
    @favorites= Favorite.all
  end
end
