class User < ApplicationRecord
  has_secure_password

  has_many :materials
  has_many :recipes

  validates :name, :login, :email, presence: true
  validates :login, :email, uniqueness: true

  def self.from_token_request request
    # Returns a valid user, `nil` or raise `Knock.not_found_exception_class_name`
    login = request.params["auth"] && request.params["auth"]["login"]
    self.find_by login: login
  end
end
