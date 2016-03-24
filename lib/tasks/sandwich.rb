namespace :sandwich do
  task :destroy => :environment do
    puts 'Destroying All Data'
    Sandwich.destroy_all
    Ingredient.destroy_all
  end
end
