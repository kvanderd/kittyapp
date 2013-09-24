class UsersController < ApplicationController

  def index

  end

  def create
    @user = User.new(params[:user])
    if 
      @user.save
      login(@user)
      flash[:notice] = "Success"
      redirect_to :root
    else 
      flash[:notice] = "An error occured, please try again."
      render :new
    end

  end


  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    # redirect_to
  end



end
