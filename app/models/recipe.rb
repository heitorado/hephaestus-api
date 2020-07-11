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

  # Outputs the final cost of the recipe, using the
  # measurements for each ingredient in the recipe and
  # calculating the cost proportional to the full ingredient cost
  def final_cost
    RecipeHasMaterial.where(recipe_id: id).includes(:material).map do |rm|
      rm.quantity * rm.material.price_per_unit
    end.sum
  end

  def debug_materials_list
    RecipeHasMaterial.where(recipe_id: id).map do |rms|
      "#{rms.material.name} - #{rms.quantity}"
    end
  end
end
