module Addons
  module Authorization
    def authorized?(object, context)
      puts "kek"
      super && context[:current_user]
    end
  end
end
