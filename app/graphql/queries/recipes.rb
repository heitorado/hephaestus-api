module Queries
  class Recipes < Queries::BaseQuery
    description 'Find all recipes'

    type [Types::RecipeType, null: true], null: true

    def resolve
      ::Recipe.created_by(context[:current_user])
    end
  end
end
