class RecipeHasMaterial < ApplicationRecord
  belongs_to :material_id
  belongs_to :recipe_id
end
