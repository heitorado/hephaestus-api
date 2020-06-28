module Mutations
  class SignUpUser < BaseMutation
    argument :name, String, required: true
    argument :login, String, required: true
    argument :email, String, required: true
    argument :password, String, required: true

    field :jwt, String, null: true

    def resolve(**attributes)
      user = User.create!(attributes)

      jwt_token = JWT.encode({ user_id: user.id }, 'secret')

      { jwt: jwt_token }
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new('Invalid User', extensions: e.record.errors.messages)
    end
  end
end
