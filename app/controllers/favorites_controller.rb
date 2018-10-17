class FavoritesController < ApplicationController
  def index
    @favorites= Favorite.new
  end
end
