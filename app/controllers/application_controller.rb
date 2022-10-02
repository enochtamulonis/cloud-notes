class ApplicationController < ActionController::Base

  def sign_in(user)
    session[:user_id] = user.id
  end
end
