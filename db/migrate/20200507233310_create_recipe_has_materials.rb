class CreateRecipeHasMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_has_materials do |t|
      t.references :material_id, foreign_key: true
      t.references :recipe_id, foreign_key: true

      t.timestamps
    end
  end
end
