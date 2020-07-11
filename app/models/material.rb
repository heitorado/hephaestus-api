class Material < ApplicationRecord
  enum measure: { kg: 0, g: 1, l: 2, ml: 3, m: 4, cm: 5 }

  has_many :recipe_has_materials
  has_many :recipes, through: :recipe_has_materials

  belongs_to :user

  scope :created_by, ->(user) { where(user: user) }

  # Calculates the minimum price per unit of that material.
  # For instance, if a product costs $ 5, it's measured in g, and has
  # 50g then the price per unit (grams, in this case) is $ 0.1.
  def price_per_unit
    price / quantity
  end
end
