class AddQuantityToRecipeHasMaterial < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_has_materials, :quantity, :decimal, default: 0.0
  end
end
