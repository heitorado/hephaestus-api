module Types
  class MaterialType < Types::BaseObject
    # Enables authorization by including the module that overrides
    # the class method 'authorized?'
    extend Addons::QueryAuthorization

    field :id, Int, null: false
    field :name, String, null: true
    field :price, Float, null: true
    field :quantity, Float, null: true
    field :measure, String, null: true
    field :notes, String, null: true

    def self.scope_items(items, context)
      items.where(user: context[:current_user])
    end
  end
end
