class Movie < ApplicationRecord
  has_many :ratings
  has_many :users, through: :ratings
  validates :api_id, uniqueness: true
end
