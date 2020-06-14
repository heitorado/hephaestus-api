class Material < ApplicationRecord
  enum measure: { kg: 0, g: 1, l: 2, ml: 3, m: 4, cm: 5 }

  has_many :recipe_has_materials
  has_many :recipes, through: :recipe_has_materials
end
