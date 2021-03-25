class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image
      t.string :ingredients
      t.string :instructions
      t.boolean :breakfast
      t.boolean :lunch
      t.boolean :dinner
      t.boolean :snack
      t.boolean :dessert

      t.timestamps
    end
  end
end
