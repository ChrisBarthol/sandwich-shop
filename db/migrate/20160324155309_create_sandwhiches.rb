class CreateSandwhiches < ActiveRecord::Migration
  def change
    create_table :sandwiches do |t|
      t.string :name
      t.text :description
      t.text :directions

      t.timestamps null: false
    end
  end
end
