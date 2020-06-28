module Queries
  class Materials < Queries::BaseQuery
    description 'Find all materials'

    type [Types::MaterialType, null: true], null: true

    def resolve
      ::Material.created_by(context[:current_user])
    end
  end
end
