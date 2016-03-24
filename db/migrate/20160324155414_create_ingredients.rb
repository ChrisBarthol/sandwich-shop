class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.text :description
      t.text :amount
      t.integer :sandwich_id
      t.string :category

      t.timestamps null: false
    end
  end
end
