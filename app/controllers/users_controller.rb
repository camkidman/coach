class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def dashboard
    @user = User.find(params[:user_id])
    @polls = Poll.where(:user_id => params[:user_id])
  end
end
