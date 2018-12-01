class UsersController < ApplicationController
  def new
         @user = User.new
         
  end
  def show
     @user = User.find(params[:id])
     @ingredients=Ingredient.joins("JOIN fridges ON fridges.ingredient_id = ingredients.id WHERE fridges.user_id=#{@user.id}")
     @favorites= Favorite.all
     @search_term = params[:looking_for] || @ingredients[0].ing_name #only works with 1 first ingredient
  	 @recipes = Recipe.for(@search_term)

  end


  def create
      @user = User.new(user_params)
      if @user.save
        log_in @user
        flash[:success] = "Welcome to your fridge!"
      #  redirect_to "http://localhost:3000/ingredients/index"
       redirect_to @user
      else
        render 'new'
      end
    end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end


end
