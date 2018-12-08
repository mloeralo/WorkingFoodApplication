class IngredientsController < ApplicationController
  def index
    @ingredients=Ingredient.all
    #@ingredients=Ingredient.joins("JOIN fridges ON fridges.ingredient_id = ingredients.id")
  
    @favorites= Favorite.all
    @search_term = params[:looking_for] ||  @ingredients[0].ing_name
    @recipes = Recipe.for(@search_term)

   
    @ingredient = Ingredient.new
  

  end
  def show
    @ingredient = Ingredient.find(params[:id])
    
  end
  def new
    @ingredient = Ingredient.new
  
  
end
  def create
    @user=User.find(session[:user_id])
    @ingredient = Ingredient.new(ingredient_params)
    if  @ingredient.save

       @fridge=Fridge.new(ingredient_id:@ingredient.id,user_id:@user.id)

       @fridge.save
     
     redirect_to @user
    else
      
      render 'new'
    end
  end
  def ingredient_params
    params.require(:ingredient).permit(:unit_id,:group_id,:ing_name, :description)
  end

  def destroy
    @user=User.find(session[:user_id])
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to @user

  end



end
