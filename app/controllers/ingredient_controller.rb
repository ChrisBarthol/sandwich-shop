class IngredientController < ApplicationController

  def index
    @ingredients = Ingredient.select(:name, :description, :category).uniq.order(:category)
  end

end
