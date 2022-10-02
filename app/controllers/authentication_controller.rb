class AuthenticationController < ApplicationController
  def new
  end

  def create
    @user = User.authenticate(params[:login], params[:password])
    if @user
      sign_in @user
      redirect_to root_path
    else
      render :new 
    end
  end
end
