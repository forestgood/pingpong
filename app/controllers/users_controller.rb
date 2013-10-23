class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save	
      flash[:success] = "Thank you for registering for the WeWork pingpong tournament. If you have any questions please contact us pingpong@6ps.com."
      redirect_to root_url
    else
      flash[:error] = "Please make sure all required fields are filled out and your email address is unique."
      redirect_to root_url
    end
  end

  def index
  	@users = User.all
  end
end
