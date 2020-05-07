class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :name
      t.decimal :price
      t.decimal :quantity
      t.integer :measure
      t.string :notes

      t.timestamps
    end
  end
end
