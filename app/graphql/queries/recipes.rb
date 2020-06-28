module Queries
  class Recipes < Queries::BaseQuery
    description 'Find all recipes'

    type [Types::RecipeType, null: true], null: true

    def resolve
      ::Recipe.all
    end
  end
end
