class Ingredient < ApplicationRecord

belongs_to :unit
belongs_to :group
has_many :fridges

end
