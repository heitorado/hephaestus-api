module Queries
  class Recipe < Queries::BaseQuery
    description 'Find a recipe by its ID'

    argument :id, ID, required: true

    type Types::RecipeType, null: true

    def resolve(id:)
      ::Recipe.find(id)
    end
  end
end
