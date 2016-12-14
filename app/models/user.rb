class User < ApplicationRecord
  has_secure_password
  has_many :parts
  has_many :likes

  validates :name, presence: true
  validates :name, length: { minimum: 6 }

  validates :email, presence: true
  validates :email, uniqueness: true

  validates :password, length: { in: 6..20 }

  # validates :description, presence: true
  # validates :description, length: { maximum: 300 }

end
