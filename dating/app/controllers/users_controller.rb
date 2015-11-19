class UsersController < ApplicationController
  
	before_action :require_login
	before_action :set_user, only: [:edit, :profile, :update, :destroy, :get_email, :matches]

  def index
  end

  def edit
  end

  def profile
  end

  def matches
  end

  def destroy
    
    if @user.destroy
      session[:user_id] = nil
      session[:omniauth] = nil
      redirect_to root_path
    else
      redirect_to edit_user_path(@user)
    end

end
end
