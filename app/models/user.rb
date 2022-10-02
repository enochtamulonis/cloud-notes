class User < ApplicationRecord
  has_secure_password

  def self.authenticate(login, password)
    @user = User.find_by_login(login)
    @user&.authenticate(params[:password])
  end

  def self.find_by_login(login)
    where("lower(username) = lower(:login) OR lower(email) = lower(:login)", { login: login }).first
  end
end
