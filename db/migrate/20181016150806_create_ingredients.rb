class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :ing_name
      t.decimal :weight
      t.decimal :quantity
      t.string :description
      t.integer :unit_id
      t.integer :cat_id
      t.date :expiration

      t.timestamps
      add_foreign_key :ingredient, :categories
      add_foreign_key :ingredient, :unit
    end
  end
end
