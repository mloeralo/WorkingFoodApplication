class CreateFridge < ActiveRecord::Migration[5.2]
  def change
	  
		create_table :users do |t|
			t.string "name"
			t.string "email"
			t.datetime "created_at", null: false
			t.datetime "updated_at", null: false
			t.string "password_digest"
		end
	    create_table :groups do |t|
			t.string "cat_name"
			t.datetime "created_at", null: false
			t.datetime "updated_at", null: false
		end
		create_table :units do |t|
			t.string "unit_name"
			t.string "unit_symbol"
			t.datetime "created_at", null: false
			t.datetime "updated_at", null: false
		end
	 
		create_table :ingredients do |t|
			t.belongs_to :unit, index: true
			t.belongs_to :group, index: true
			t.datetime :published_at
			t.string "ing_name"
			t.decimal "weight"
			t.decimal "quantity"
			t.string "description"
			t.date "expiration"
			t.datetime "created_at", null: false
			t.datetime "updated_at", null: false
		end
		create_table :fridges do |t|
			t.belongs_to :ingredient, index: true
			t.belongs_to :user, index: true
			t.datetime "created_at", null: false
			t.datetime "updated_at", null: false
		end
	  end
end
