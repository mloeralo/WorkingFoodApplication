class Ingredient < ApplicationRecord

has_many :units
has_many :categories

end
