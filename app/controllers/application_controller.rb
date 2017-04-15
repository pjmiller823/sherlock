class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user=(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  # Returns a boolean representing if the user is logged in
  def logged_in?
    !!current_user
  end
  helper_method :logged_in?

  # Method to use in filter to ensure the user is logged in
  def authenticate!
    unless logged_in?
      redirect_to auth_path(provider: 'github')
    end
  end

  def how_long_ago(home)
    time_ago_in_words(home.created_at)
  end
  helper_method :how_long_ago
end
