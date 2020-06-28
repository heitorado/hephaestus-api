class Recipe < ApplicationRecord
  has_many :recipe_has_materials
  has_many :materials, through: :recipe_has_materials

  belongs_to :user

  scope :created_by, ->(user) { where(user: user) }
end
