module Types
  class RecipeType < Types::BaseObject
    # Enables authorization by including the module that overrides
    # the class method 'authorized?'
    extend Addons::Authorization

    field :id, Int, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :materials, [MaterialType], null: false
  end
end
