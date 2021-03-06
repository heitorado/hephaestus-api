module Queries
  class Material < Queries::BaseQuery
    description 'Find a Material by its id'

    argument :id, ID, required: true

    type Types::MaterialType, null: true


    def resolve(id:)
      ::Material.find_by(id: id, user: context[:current_user])
    end
  end
end
