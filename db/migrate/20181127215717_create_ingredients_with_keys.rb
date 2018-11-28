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
    end
    create_table :categories do |t|
      t.references :ingredient, foreign_key: true
      t.string :cat_name

      t.timestamps
    end

    create_table :units do |t|
      t.references :ingredient, foreign_key: true
      t.string :unit_name
      t.string :unit_symbol
      t.timestamps
    end
  end
end