class User < ApplicationRecord
  has_secure_password

  has_many :materials
  has_many :recipes

  validates :name, :login, :email, presence: true
  validates :login, :email, uniqueness: true
end
