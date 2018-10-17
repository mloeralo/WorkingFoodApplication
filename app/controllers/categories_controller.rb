class CategoriesController < ApplicationController
#This method display the list of all available categories
  def index
    @categories=Categories.all
  end
  def new (cat_name)
    @categories=Categories.new(cat_id: 1, cat_name:"Carbohydrates")
    @categories.save

  end


  #check chapter 2listing 2.7
end
