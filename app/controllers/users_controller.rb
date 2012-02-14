class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
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
