class CommentsController < ApplicationController

	def index
		@comments = Comment.scoped
		@comment = Comment.new
	end

  def new 
    ap params
    @kitty = Kitty.find(params[:kitty_id])
  	@comment = Comment.new(parent_id: params[:parent_id], kitty_id: params[:kitty_id])
  end

  def create
    ap params
  	@comment = Comment.new(params[:comment])
    @comment.kitty_id = params[:kitty_id]
    @comment.user_id = session[:user_id]
  	if @comment.save
  	  redirect_to kitty_path(@comment.kitty)
  	else
  		render :new
  	end
  end

  def destroy 
  	comment = Comment.find(params[:id])
  	comment.destroy
  	redirect_to comments_path
  end



end