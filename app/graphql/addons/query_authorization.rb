module Addons
  module QueryAuthorization
    def authorized?(object, context)
      # Check if user is logged
      return unless super && context[:current_user]

      # Check authorization depending on object Class
      if object.is_a?(::Recipe) || object.is_a?(::Material)
        object.user.id == context[:current_user].id
      elsif object.is_a?(::User)
        object.id == context[:current_user].id
      else
        false
      end
    end
  end
end
