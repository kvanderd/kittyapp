class HomeController < ApplicationController

  def index
    @kitty = Kitty.all.reverse
  end
end