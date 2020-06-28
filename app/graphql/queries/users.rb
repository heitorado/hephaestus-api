module Queries
  class Users < Queries::BaseQuery
    description 'Find all users'

    type [Types::UserType, null: true], null: false

    def resolve
      ::User.all
    end
  end
end
