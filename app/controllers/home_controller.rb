class HomeController < ApplicationController

  def index
    @kitty = Kitty.all
    #call a method that does decay overtime incorporating thumbs and thumbs down
  end

  def show
  end
end