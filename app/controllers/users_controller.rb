class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.all
  end

  def dashboard
    @user = User.find(params[:user_id])

    if @user != current_user
      flash[:notice] = "You can only view your own feedback!"
      redirect_to user_dashboard_path(current_user)
    end

    @polls = Poll.where(:user_id => params[:user_id])
  end
end
