class HomeController < ApplicationController

  def index
    @welcome = "hi"
    @ingedients = Ingredient.all
  end

end
