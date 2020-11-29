class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  validates_uniqueness_of :movie,  scope: :user 
end