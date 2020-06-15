module Mutations
  class UpdateRecipe < Mutations::BaseMutation
    null true

    argument :id, Int, required: true
    argument :name, String, required: false
    argument :material_ids, [Int], required: false

    field :recipe, Types::RecipeType, null: true
    field :errors, [String], null: false

    def resolve(id:, **attributes)
      recipe = Recipe.find(id)

      if recipe.update(attributes)
        { recipe: recipe, errors: [] }
      else
        { recipe: nil, errors: recipe.errors.full_messages }
      end
    end
  end
end
