module Mutations
  class SignInUser < BaseMutation
    argument :login, String, required: false
    argument :email, String, required: false
    argument :password, String, required: true

    field :jwt, String, null: true

    def resolve(**attributes)
      return unless attributes[:login].present? || attributes[:email].present?

      user = User.where('login = ? OR email = ?', attributes[:login], attributes[:email]).first

      return unless user
      return unless user.authenticate(attributes[:password])

      jwt_token = JWT.encode({ user_id: user.id }, 'secret')

      { jwt: jwt_token }
    end
  end
end
