class FavoritesController < ApplicationController
  def initialize

  end

  def create
    current_user.favorites.create(:home_id => params[:home_id])
  end

  def delete
    favorite = Favorite.find_by(:home_id => params[:homeId], :user_id => current_user.id)
    favorite.destroy
  end
end
