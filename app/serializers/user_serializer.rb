class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar_url, :detailed_bio, :one_line, :twitter, :instagram
  has_many :ratings
  has_many :movies, through: :ratings
  
end