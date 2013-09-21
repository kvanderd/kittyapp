class HomeController < ApplicationController

  def index
    @kitty = Kitty.all
  end
end