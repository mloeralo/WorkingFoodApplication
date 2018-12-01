class Ingredient < ApplicationRecord

belongs_to :unit
belongs_to :category
has_many :fridges

end
