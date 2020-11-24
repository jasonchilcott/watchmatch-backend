class RatingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :movie_id, :stars
  belongs_to :user
  belongs_to :movie
end
