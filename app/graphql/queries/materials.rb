module Queries
  class Materials < Queries::BaseQuery
    description 'Find all materials'

    type [Types::MaterialType], null: true

    def resolve
      ::Material.all
    end
  end
end
