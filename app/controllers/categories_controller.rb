class CategoriesController < ApplicationController
  def index
    #Move it to a new method

    @categories=Categories.all

  end
  def new
    @categories=Categories.new(cat_id: 1, cat_name:"Carbohydrates")
    @categories.save

  end


  #check chapter 2listing 2.7
end
