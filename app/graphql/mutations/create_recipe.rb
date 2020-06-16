module Mutations
  class CreateRecipe < Mutations::BaseMutation
    null true

    argument :name, String, required: true
    argument :description, String, required: false
    argument :material_ids, [Int], required: true

    field :recipe, Types::RecipeType, null: true
    field :errors, [String], null: false

    def resolve(**attributes)
      recipe = context[:current_user].recipes.new(attributes)

      if recipe.save
        { recipe: recipe, errors: [] }
      else
        { recipe: nil, errors: recipe.errors.full_messages }
      end
    end
  end
end
