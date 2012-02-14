class UsersController < ApplicationController
  def create
    
  end

  def show
    @user = User.find(params[:id])
  end
  
  def new
    @title = "Sign up"
    @user = User.new
  end
  
  def all
    @title = "All users"
    @users = User.find(:all)
  end

end
