module Mutations
  class CreateMaterial < Mutations::BaseMutation
    null true

    argument :name, String, required: true
    argument :price, Float, required: true
    argument :quantity, Float, required: true
    argument :measure, String, required: true
    argument :notes, String, required: false

    field :material, Types::MaterialType, null: true
    field :errors, [String], null: false

    def resolve(**attributes)
      material = context[:current_user].materials.new(attributes)

      if material.save
        { material: material, errors: [] }
      else
        { material: nil, errors: material.errors.full_messages }
      end
    end
  end
end
