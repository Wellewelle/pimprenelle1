class FavoritesController < ApplicationController

  def index
    @favorite = Favorite.all
  end
end
