class User < ApplicationRecord
  has_secure_password
  has_many :ratings
  has_many :movies, through: :ratings
  
  validates :username, uniqueness: { case_sensitive: false }
  validates_format_of :username, with: /\A([a-zA-Z0-9]){1}([a-zA-Z0-9\_]){4,15}\z/i
  validates :password, presence: true, on: :create
end
