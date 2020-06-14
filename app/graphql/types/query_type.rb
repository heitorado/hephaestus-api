module Types
  class QueryType < Types::BaseObject
    field :recipe, resolver: Queries::Recipe
    field :recipes, resolver: Queries::Recipes
    field :material, resolver: Queries::Material
    field :materials, resolver: Queries::Materials
  end
end
