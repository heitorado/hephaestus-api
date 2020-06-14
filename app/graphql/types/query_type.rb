module Types
  class QueryType < Types::BaseObject
    field :user, resolver: Queries::User
    field :users, resolver: Queries::Users
    field :recipe, resolver: Queries::Recipe
    field :recipes, resolver: Queries::Recipes
    field :material, resolver: Queries::Material
    field :materials, resolver: Queries::Materials
  end
end
