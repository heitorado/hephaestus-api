module Types
  class MaterialType < Types::BaseObject
    field :id, Int, null: false
    field :name, String, null: true
    field :price, Float, null: true
    field :quantity, Float, null: true
    field :measure, Int, null: true
    field :notes, String, null: true
  end
end
