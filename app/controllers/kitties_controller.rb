class KittiesController < ApplicationController

	def new
	  @kitty = Kitty.new()
	end

	def show
    @kitty = Kitty.find(params[:id])
    @comment = Comment.new()
	end

	def create
		ap session[:user_id]
		@kitty = Kitty.create!(params[:kitty])
		@kitty.user_id = session[:user_id]
		@kitty.save!
		redirect_to :root
	end

	def destroy
		kitty = Kitty.find(params[:id])
		kitty.destroy
		redirect_to :root
	end

end
