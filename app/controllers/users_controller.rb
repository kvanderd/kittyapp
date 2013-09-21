class UsersController < ApplicationController

  def index

  end

  def create
    if [:notice]
      flash[:notice] = "An error occured, please try again."
    end
    @user = User.create(params[:user])
    login(@user)
    redirect_to :root
  end


  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    # redirect_to
  end



end
