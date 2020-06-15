module Mutations
  class UpdateUser < Mutations::BaseMutation
    null true

    argument :id, Int, required: true
    argument :name, String, required: false
    argument :login, String, required: false
    argument :email, String, required: false
    argument :password, String, required: false

    field :user, Types::UserType, null: true
    field :errors, [String], null: false

    def resolve(id:, **attributes)
      user = User.find(id)

      if user.update(attributes)
        { user: user, errors: [] }
      else
        { user: nil, errors: user.errors.full_messages }
      end
    end
  end
end
