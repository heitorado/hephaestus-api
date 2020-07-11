class Recipe < ApplicationRecord
  has_many :recipe_has_materials
  has_many :materials, through: :recipe_has_materials

  belongs_to :user

  scope :created_by, ->(user) { where(user: user) }

  # Adds a new material to the recipe with the specific quantity
  def add_material(material, quantity)
    RecipeHasMaterial.create!(material_id: material.id,
                              recipe_id: id,
                              quantity: quantity)
  end
end
