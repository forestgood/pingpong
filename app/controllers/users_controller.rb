class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save	
      redirect_to root_url
    end
  end

  def index
  	@users = User.all
  end
end
