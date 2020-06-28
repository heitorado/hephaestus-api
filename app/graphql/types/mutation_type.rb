module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :update_user, mutation: Mutations::UpdateUser
    field :create_material, mutation: Mutations::CreateMaterial
    field :update_material, mutation: Mutations::UpdateMaterial
    field :create_recipe, mutation: Mutations::CreateRecipe
    field :update_recipe, mutation: Mutations::UpdateRecipe
    field :sign_in_user, mutation: Mutations::SignInUser
    field :sign_up_user, mutation: Mutations::SignUpUser
  end
end
