module Queries
  class User < Queries::BaseQuery
    description 'Find an User by its ID'

    argument :login, String, required: true

    type Types::UserType, null: true

    def resolve(login:)
      ::User.find_by_login(login)
    end
  end
end
