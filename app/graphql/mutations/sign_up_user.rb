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
    rescue ActiveRecord::RecordInvalid => error
      GraphQL::ExecutionError.new(error.record.errors.full_messages.join(', ').to_s)
    end
  end
end
