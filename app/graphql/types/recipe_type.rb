module Types
  class RecipeType < Types::BaseObject
    field :id, Int, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :materials, [MaterialType], null: false
  end
end
