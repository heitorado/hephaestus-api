module Types
  class RecipeType < Types::BaseObject
    field :id, Int, null: false
    field :name, String, null: false
    field :materials, [MaterialType], null: false
  end
end
