module Mutations
  class CreateUser < Mutations::BaseMutation
    null true

    argument :name, String, required: true
    argument :login, String, required: true
    argument :email, String, required: true
    argument :password, String, required: true

    field :user, Types::UserType, null: true
    field :errors, [String], null: false

    def resolve(name:, login:, email:, password:)
      user = User.new(name: name, login: login, email: email, password: password)

      if(user.save)
        { user: user, errors: [] }
      else
        { user: nil, errors: user.errors.full_messages }
      end
    end
  end
end
