module Types
  class UserType < Types::BaseObject
    # Enables authorization by including the module that overrides
    # the class method 'authorized?'
    extend Addons::QueryAuthorization

    field :id, Int, null: false
    field :name, String, null: false
    field :login, String, null: false
    field :email, String, null: false
    field :materials, [MaterialType], null: false
    field :recipes, [RecipeType], null: false

    def self.scope_items(items, context)
      items.where(id: context[:current_user]&.id)
    end
  end
end
