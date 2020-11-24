class User < ApplicationRecord
  has_secure_password
  has_many :ratings
  has_many :movies, through: :ratings
  
  validates :username, uniqueness: { case_sensitive: false }
  validates :password, presence: true
end
