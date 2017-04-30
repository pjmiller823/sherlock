class FavoritesController < ApplicationController
  def initialize

  end

  def create
    home_id = params["home_id"]
    created_by = current_user

    # talk to AJAX server.

    # record the house_id, user_id, and log them.
    # return a favorite class name that will change the heart pink the next time it is loaded, or standard class if not the favorite.
  end
end
