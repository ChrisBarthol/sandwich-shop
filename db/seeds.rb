# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#The sandwiches
@steak = Sandwich.create!(name: "Steak Sandwich", description: "Steak and cheese, nothing more.", directions: "Split hoagie, slap some meat on, over in cheese")
@gander = Sandwich.create!(name: "The Gander", description: "The king of all sandwiches.", directions: "bread|russian dressing|lettuce|tomato|bacon|bread|sliced chicken|cheddar cheese|russian dressing|bread")
@dragon = Sandwich.create!(name: "White Dragon", description: "Meatballs, Pepperoni, Pepperjack", directions: "Split hoagie, cover bottom with pepperoni, add meatballs, cover in cheese, toast it")

#STEAK STEAK STEAK
@steak.ingredients.create!(name: "Hoagie Roll", description: "Hoagie Roll", amount: "1", category: "Bread")
@steak.ingredients.create!(name: "Steak", description: "chopped steak", amount: "8oz", category: "Meat")
@steak.ingredients.create!(name: "Provolone", description: "Provolone", amount: "3 slices", category: "Cheese")

#A fine choice
@dragon.ingredients.create!(name: "Hoagie Roll", description: "Hoagie Roll", amount: "1", category: "Bread")
@dragon.ingredients.create!(name: "Metaballs", description: "Balls of meat", amount: "8oz", category: "Cheese")
@dragon.ingredients.create!(name: "Pepperjack", description: "Pepperjack", amount: "3 slices", category: "Cheese")
@dragon.ingredients.create!(name: "Marinara", description: "Hoagie Roll", amount: "2oz", category: "Sauce")

#The King
@gander.ingredients.create!(name: "Rye", description: "Rye", amount: "3 slices", category: "Bread")
@gander.ingredients.create!(name: "Cheddar", description: "Cheddar", amount: "3 slices", category: "Cheese")
@gander.ingredients.create!(name: "Bacon", description: "MOAR BACON", amount: "3 pieces", category: "Meat")
@gander.ingredients.create!(name: "Chicken", description: "Sliced for best time", amount: "8oz", category: "Meat")
@gander.ingredients.create!(name: "Russian Dressing", description: "Pepperjack", amount: "3 slices", category: "Sauce")
@gander.ingredients.create!(name: "Tomato", description: "Heirloom", amount: "2oz", category: "Topping")
@gander.ingredients.create!(name: "Lettuce", description: "sliced iceburg", amount: "2oz", category: "Topping")
