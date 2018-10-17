class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :fav_name
      t.string :recipe_link

      t.timestamps
    end
  end
end
