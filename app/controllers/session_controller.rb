class SessionController < ApplicationController
  # logging in
  def new
  end

  # handle the post from the login page
  def create
    self.current_user = User.from_omniauth(request.env['omniauth.auth'])
    # SherlockMailer.welcome(current_user).deliver_later
    if current_user
      redirect_to homes_path
    else
      redirect_to auth_path(provider: 'github')
    end
  end

  # logout
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  # Show the failure page
  def failure
    # TODO, create failure.html.erb
  end
end
