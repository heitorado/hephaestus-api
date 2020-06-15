module Mutations
  class UpdateMaterial < Mutations::BaseMutation
    null true

    argument :id, String, required: true
    argument :name, String, required: false
    argument :price, Float, required: false
    argument :quantity, Float, required: false
    argument :measure, Int, required: false
    argument :notes, String, required: false

    field :material, Types::MaterialType, null: true
    field :errors, [String], null: false

    def resolve(id:, **attributes)
      material = Material.find(id)

      if material.update(attributes)
        { material: material, errors: [] }
      else
        { material: nil, errors: material.errors.full_messages }
      end
    end
  end
end
