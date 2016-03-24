class SandwichController < ApplicationController

  def index
    @sandwiches = Sandwich.all
  end

end
