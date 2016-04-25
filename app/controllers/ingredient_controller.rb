class IngredientController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

end
