class AddKeys < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :categories, :ingredients
    add_foreign_key :units, :ingredients
  end
end
