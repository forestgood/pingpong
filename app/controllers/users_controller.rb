class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save	
      flash[:success] = "Thank you for registering.  Get excited for WeWork PingPong!"
      redirect_to root_url
    else
      flash[:error] = "Please make sure all fields are filled out"
      redirect_to root_url
    end
  end

  def index
  	@users = User.all
  end
end
