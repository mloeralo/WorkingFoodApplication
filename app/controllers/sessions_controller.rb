class SessionsController < ApplicationController
  def new
    @user = User.new
end
    def show
     @user = User.find(params[:id])
     @ingredients=Ingredient.joins("JOIN fridges ON fridges.ingredient_id = ingredients.id")
     @favorites= Favorite.all
     @search_term = params[:looking_for] || @ingredients[0].ing_name
     @recipes = Recipe.for(@search_term)

  end
  def create
     user = User.find_by(email: params[:session][:email].downcase)
     if user && user.authenticate(params[:session][:password])
       log_in user
       redirect_to user
       # Log the user in and redirect to the user's show page.
     else
       # Create an error message.
        #flash[:danger] = 'Invalid email/password combination' # Not quite right!
       render 'new'
     end
   end
   def destroy
   log_out
   redirect_to root_url
 end
end
