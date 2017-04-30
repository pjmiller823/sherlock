class FavoritesController < ApplicationController
  def initialize

  end

  def create
    home_id = params["home_id"]
    created_by = current_user
  end

  def delete
    home_id = nil
    created_by = nil
  end
end
