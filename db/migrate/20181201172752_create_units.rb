class CreateUnits < ActiveRecord::Migration[5.2]
  def change
		create_table :units do |t|
			t.string "unit_name"
			t.string "unit_symbol"
			t.datetime "created_at", null: false
			t.datetime "updated_at", null: false
		end
	 
		create_table :ingredients do |t|
			t.belongs_to :unit, index: true
			t.belongs_to :category, index: true
			t.datetime :published_at
			t.string "ing_name"
			t.decimal "weight"
			t.decimal "quantity"
			t.string "description"
			t.date "expiration"
			t.datetime "created_at", null: false
			t.datetime "updated_at", null: false
		end
	  end
end
