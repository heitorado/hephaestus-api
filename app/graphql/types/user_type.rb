module Types
  class UserType < Types::BaseObject
    field :id, Int, null: false
    field :name, String, null: false
    field :login, String, null: false
    field :email, String, null: false
    field :materials, [MaterialType], null: false
    field :recipes, [RecipeType], null: false
  end
end
