module Addons
  module QueryAuthorization
    def authorized?(object, context)
      # Check if user is logged
      super && context[:current_user]
    end
  end
end
