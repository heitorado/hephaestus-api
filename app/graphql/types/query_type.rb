module Types
  class QueryType < Types::BaseObject
    field :materials, [MaterialType], null: true do
      description 'Query for all materials in the database'
    end

    def materials
      Material.all
    end

    field :material, MaterialType, null: true do
      description 'Query a Material by its id'
      argument :id, ID, required: true
    end

    def material(id:)
      Material.find(id)
    end
  end
end
