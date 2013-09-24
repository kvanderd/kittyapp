class KittiesController < ApplicationController

	def new
	  @kitty = Kitty.new()
	end

	def show
    @kitty = Kitty.find(params[:id])
     #this is setting up the new comment form
    @comment = Comment.new(parent_id: params[:parent_id])
     #this is showing all the comments and their children 
     #how do we make this only for comments with a kitty id?
    # @kitty.comments = Comment.scoped
	end

	def create
		@kitty = Kitty.create!(params[:kitty])
		@kitty.user_id = session[:user_id]
		@kitty.save!
		redirect_to :root
	end

	def destroy
		ap params
	end

end
