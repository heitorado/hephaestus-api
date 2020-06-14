class CreateRecipeHasMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_has_materials do |t|
      t.belongs_to :material, foreign_key: true
      t.belongs_to :recipe, foreign_key: true

      t.timestamps
    end
  end
end
